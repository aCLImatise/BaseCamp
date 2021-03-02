class: CommandLineTool
id: pod2text.cwl
inputs:
- id: in_alt
  doc: "Use an alternate output format that, among other things, uses a\ndifferent\
    \ heading style and marks \"=item\" entries with a colon in\nthe left margin."
  type: boolean?
  inputBinding:
    prefix: --alt
- id: in_code
  doc: "Include any non-POD text from the input file in the output as well.\nUseful\
    \ for viewing code documented with POD blocks with the POD\nrendered and the code\
    \ left intact."
  type: boolean?
  inputBinding:
    prefix: --code
- id: in_color
  doc: "Format the output with ANSI color escape sequences. Using this\noption requires\
    \ that Term::ANSIColor be installed on your system."
  type: boolean?
  inputBinding:
    prefix: --color
- id: in_errors
  doc: "Set the error handling style. \"die\" says to throw an exception on\nany POD\
    \ formatting error. \"stderr\" says to report errors on standard\nerror, but not\
    \ to throw an exception. \"pod\" says to include a POD\nERRORS section in the\
    \ resulting documentation summarizing the\nerrors. \"none\" ignores POD errors\
    \ entirely, as much as possible.\nThe default is \"die\"."
  type: string?
  inputBinding:
    prefix: --errors
- id: in_indent
  doc: "Set the number of spaces to indent regular text, and the default\nindentation\
    \ for \"=over\" blocks. Defaults to 4 spaces if this option\nisn't given."
  type: long?
  inputBinding:
    prefix: --indent
- id: in_loose
  doc: "Print a blank line after a \"=head1\" heading. Normally, no blank line\nis\
    \ printed after \"=head1\", although one is still printed after\n\"=head2\", because\
    \ this is the expected formatting for manual pages;\nif you're formatting arbitrary\
    \ text documents, using this option is\nrecommended."
  type: boolean?
  inputBinding:
    prefix: --loose
- id: in_left_margin
  doc: "The width of the left margin in spaces. Defaults to 0. This is the\nmargin\
    \ for all text, including headings, not the amount by which\nregular text is indented;\
    \ for the latter, see -i option."
  type: long?
  inputBinding:
    prefix: --left-margin
- id: in_no_urls
  doc: "Normally, L<> formatting codes with a URL but anchor text are\nformatted to\
    \ show both the anchor text and the URL. In other words:\nL<foo|http://example.com/>\n\
    is formatted as:\nfoo <http://example.com/>\nThis flag, if given, suppresses the\
    \ URL when anchor text is given,\nso this example would be formatted as just \"\
    foo\". This can produce\nless cluttered output in cases where the URLs are not\
    \ particularly\nimportant."
  type: boolean?
  inputBinding:
    prefix: --nourls
- id: in_overstrike
  doc: "Format the output with overstrike printing. Bold text is rendered as\ncharacter,\
    \ backspace, character. Italics and file names are rendered\nas underscore, backspace,\
    \ character. Many pagers, such as less, know\nhow to convert this to bold or underlined\
    \ text."
  type: File?
  inputBinding:
    prefix: --overstrike
- id: in_quotes
  doc: "Sets the quote marks used to surround C<> text to quotes. If quotes\nis a\
    \ single character, it is used as both the left and right quote.\nOtherwise, it\
    \ is split in half, and the first half of the string is\nused as the left quote\
    \ and the second is used as the right quote.\nquotes may also be set to the special\
    \ value \"none\", in which case no\nquote marks are added around C<> text."
  type: string?
  inputBinding:
    prefix: --quotes
- id: in_sentence
  doc: "Assume each sentence ends with two spaces and try to preserve that\nspacing.\
    \ Without this option, all consecutive whitespace in\nnon-verbatim paragraphs\
    \ is compressed into a single space."
  type: boolean?
  inputBinding:
    prefix: --sentence
- id: in_stderr
  doc: "By default, pod2text dies if any errors are detected in the POD\ninput. If\
    \ --stderr is given and no --errors flag is present, errors\nare sent to standard\
    \ error, but pod2text does not abort. This is\nequivalent to \"--errors=stderr\"\
    \ and is supported for backward\ncompatibility."
  type: boolean?
  inputBinding:
    prefix: --stderr
- id: in_termcap
  doc: "Try to determine the width of the screen and the bold and underline\nsequences\
    \ for the terminal from termcap, and use that information in\nformatting the output.\
    \ Output will be wrapped at two columns less\nthan the width of your terminal\
    \ device. Using this option requires\nthat your system have a termcap file somewhere\
    \ where Term::Cap can\nfind it and requires that your system support termios.\
    \ With this\noption, the output of pod2text will contain terminal control\nsequences\
    \ for your current terminal type."
  type: File?
  inputBinding:
    prefix: --termcap
- id: in_utf_eight
  doc: "By default, pod2text tries to use the same output encoding as its\ninput encoding\
    \ (to be backward-compatible with older versions). This\noption says to instead\
    \ force the output encoding to UTF-8.\nBe aware that, when using this option,\
    \ the input encoding of your\nPOD source should be properly declared unless it's\
    \ US-ASCII.\nPod::Simple will attempt to guess the encoding and may be successful\n\
    if it's Latin-1 or UTF-8, but it will warn, which by default results\nin a pod2text\
    \ failure. Use the \"=encoding\" command to declare the\nencoding. See perlpod(1)\
    \ for more information."
  type: boolean?
  inputBinding:
    prefix: --utf8
- id: in_width
  doc: "The column at which to wrap text on the right-hand side. Defaults to\n76,\
    \ unless -t is given, in which case it's two columns less than the\nwidth of your\
    \ terminal device.\n"
  type: long?
  inputBinding:
    prefix: --width
- id: in_ac_lost_u
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -aclostu
- id: in_input
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_overstrike
  doc: "Format the output with overstrike printing. Bold text is rendered as\ncharacter,\
    \ backspace, character. Italics and file names are rendered\nas underscore, backspace,\
    \ character. Many pagers, such as less, know\nhow to convert this to bold or underlined\
    \ text."
  type: File?
  outputBinding:
    glob: $(inputs.in_overstrike)
- id: out_termcap
  doc: "Try to determine the width of the screen and the bold and underline\nsequences\
    \ for the terminal from termcap, and use that information in\nformatting the output.\
    \ Output will be wrapped at two columns less\nthan the width of your terminal\
    \ device. Using this option requires\nthat your system have a termcap file somewhere\
    \ where Term::Cap can\nfind it and requires that your system support termios.\
    \ With this\noption, the output of pod2text will contain terminal control\nsequences\
    \ for your current terminal type."
  type: File?
  outputBinding:
    glob: $(inputs.in_termcap)
hints: []
cwlVersion: v1.1
baseCommand:
- pod2text
