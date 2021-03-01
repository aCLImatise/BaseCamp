version 1.0

task Pod2text {
  input {
    Boolean? alt
    Boolean? code
    Boolean? color
    String? errors
    Int? indent
    Boolean? loose
    Int? left_margin
    Boolean? no_urls
    File? overstrike
    String? quotes
    Boolean? sentence
    Boolean? stderr
    File? termcap
    Boolean? utf_eight
    Int? width
    Boolean? ac_lost_u
    String? var_input
  }
  command <<<
    pod2text \
      ~{var_input} \
      ~{if (alt) then "--alt" else ""} \
      ~{if (code) then "--code" else ""} \
      ~{if (color) then "--color" else ""} \
      ~{if defined(errors) then ("--errors " +  '"' + errors + '"') else ""} \
      ~{if defined(indent) then ("--indent " +  '"' + indent + '"') else ""} \
      ~{if (loose) then "--loose" else ""} \
      ~{if defined(left_margin) then ("--left-margin " +  '"' + left_margin + '"') else ""} \
      ~{if (no_urls) then "--nourls" else ""} \
      ~{if (overstrike) then "--overstrike" else ""} \
      ~{if defined(quotes) then ("--quotes " +  '"' + quotes + '"') else ""} \
      ~{if (sentence) then "--sentence" else ""} \
      ~{if (stderr) then "--stderr" else ""} \
      ~{if (termcap) then "--termcap" else ""} \
      ~{if (utf_eight) then "--utf8" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if (ac_lost_u) then "-aclostu" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alt: "Use an alternate output format that, among other things, uses a\\ndifferent heading style and marks \\\"=item\\\" entries with a colon in\\nthe left margin."
    code: "Include any non-POD text from the input file in the output as well.\\nUseful for viewing code documented with POD blocks with the POD\\nrendered and the code left intact."
    color: "Format the output with ANSI color escape sequences. Using this\\noption requires that Term::ANSIColor be installed on your system."
    errors: "Set the error handling style. \\\"die\\\" says to throw an exception on\\nany POD formatting error. \\\"stderr\\\" says to report errors on standard\\nerror, but not to throw an exception. \\\"pod\\\" says to include a POD\\nERRORS section in the resulting documentation summarizing the\\nerrors. \\\"none\\\" ignores POD errors entirely, as much as possible.\\nThe default is \\\"die\\\"."
    indent: "Set the number of spaces to indent regular text, and the default\\nindentation for \\\"=over\\\" blocks. Defaults to 4 spaces if this option\\nisn't given."
    loose: "Print a blank line after a \\\"=head1\\\" heading. Normally, no blank line\\nis printed after \\\"=head1\\\", although one is still printed after\\n\\\"=head2\\\", because this is the expected formatting for manual pages;\\nif you're formatting arbitrary text documents, using this option is\\nrecommended."
    left_margin: "The width of the left margin in spaces. Defaults to 0. This is the\\nmargin for all text, including headings, not the amount by which\\nregular text is indented; for the latter, see -i option."
    no_urls: "Normally, L<> formatting codes with a URL but anchor text are\\nformatted to show both the anchor text and the URL. In other words:\\nL<foo|http://example.com/>\\nis formatted as:\\nfoo <http://example.com/>\\nThis flag, if given, suppresses the URL when anchor text is given,\\nso this example would be formatted as just \\\"foo\\\". This can produce\\nless cluttered output in cases where the URLs are not particularly\\nimportant."
    overstrike: "Format the output with overstrike printing. Bold text is rendered as\\ncharacter, backspace, character. Italics and file names are rendered\\nas underscore, backspace, character. Many pagers, such as less, know\\nhow to convert this to bold or underlined text."
    quotes: "Sets the quote marks used to surround C<> text to quotes. If quotes\\nis a single character, it is used as both the left and right quote.\\nOtherwise, it is split in half, and the first half of the string is\\nused as the left quote and the second is used as the right quote.\\nquotes may also be set to the special value \\\"none\\\", in which case no\\nquote marks are added around C<> text."
    sentence: "Assume each sentence ends with two spaces and try to preserve that\\nspacing. Without this option, all consecutive whitespace in\\nnon-verbatim paragraphs is compressed into a single space."
    stderr: "By default, pod2text dies if any errors are detected in the POD\\ninput. If --stderr is given and no --errors flag is present, errors\\nare sent to standard error, but pod2text does not abort. This is\\nequivalent to \\\"--errors=stderr\\\" and is supported for backward\\ncompatibility."
    termcap: "Try to determine the width of the screen and the bold and underline\\nsequences for the terminal from termcap, and use that information in\\nformatting the output. Output will be wrapped at two columns less\\nthan the width of your terminal device. Using this option requires\\nthat your system have a termcap file somewhere where Term::Cap can\\nfind it and requires that your system support termios. With this\\noption, the output of pod2text will contain terminal control\\nsequences for your current terminal type."
    utf_eight: "By default, pod2text tries to use the same output encoding as its\\ninput encoding (to be backward-compatible with older versions). This\\noption says to instead force the output encoding to UTF-8.\\nBe aware that, when using this option, the input encoding of your\\nPOD source should be properly declared unless it's US-ASCII.\\nPod::Simple will attempt to guess the encoding and may be successful\\nif it's Latin-1 or UTF-8, but it will warn, which by default results\\nin a pod2text failure. Use the \\\"=encoding\\\" command to declare the\\nencoding. See perlpod(1) for more information."
    width: "The column at which to wrap text on the right-hand side. Defaults to\\n76, unless -t is given, in which case it's two columns less than the\\nwidth of your terminal device.\\n"
    ac_lost_u: ""
    var_input: ""
  }
  output {
    File out_stdout = stdout()
    File out_overstrike = "${in_overstrike}"
    File out_termcap = "${in_termcap}"
  }
}