use v6;

sub MAIN($rfc) {
    my regex begins { '<CODE BEGINS>' }
    my regex ends { '<CODE ENDS>' }
    my regex file { 'file' \s+ '"' $<name>=[ <-[ " ]> + ] '"' }
    my regex block { <begins> \s+ <file> \h* \n+ $<text>=[ .* ] <ends> };

    my $text = slurp $rfc;

    if $text ~~ m/ <block>+ / {
       say ~$<block>[0]<file><name>;
       say ~$<block>[0]<text>;
   }
}
