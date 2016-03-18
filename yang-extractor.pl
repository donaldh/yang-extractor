#!/usr/bin/env perl6

use v6;

#| Extract YANG modules from an RFC specification
sub MAIN(
    $rfc-file    #= The RFC file name
) {
    my regex begins { '<CODE BEGINS>' }
    my regex file { 'file' \s+ '"' $<name>=[ <-[ " ]> + ] '"' }
    my regex body { .*? }
    my regex ends { '<CODE ENDS>' }
    my regex block { .*? <begins> \s+ <file> \h* \n+ <body> <ends>  .*? };

    my $text = slurp $rfc-file;

    if $text ~~ / <block>+ / {
        for $<block>.list -> $block {
            my $filename = ~$block<file><name>;
            my $contents =  ~$block<body>;

            # Identify the indent level
            my $indent = $contents ~~ /^\s+/;

            # Strip page headers and footers
            $contents ~~ s:g/ \n+ [ ^^ \S \N* ]+ \n+//;

            # Strip leading indentation
            $contents ~~ s:g/ ^^ "$indent" //;

            say "Saving {+$contents.lines} lines into {$filename}";
            spurt $filename, $contents;
        }
    }
}
