use strict;
use Template::Test;

test_expect(\*DATA, undef, {});
__END__
--test--
[% USE Text::Filter::URI -%]
[% "a b c d" | filter_uri %]
--expect--
a-b-c-d

--test--
[% USE Text::Filter::URI -%]
[% "a text with f�reign ch�r�cters" | filter_uri %]
--expect--
a-text-with-foreign-characters
