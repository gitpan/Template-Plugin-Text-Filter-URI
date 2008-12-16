use strict;
use Template::Test;

test_expect(\*DATA, undef, {});
__END__
--test--
[% USE Text::Filter::URI -%]
[% "a b c d" |uri %]
--expect--
a-b-c-d

--test--
[% USE Text::Filter::URI -%]
[% "a text with föreign chäräcters" | uri %]
--expect--
a-text-with-foreign-characters
