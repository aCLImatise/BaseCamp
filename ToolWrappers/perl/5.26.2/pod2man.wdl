version 1.0

task Pod2man {
  input {
    String? center
    File? date
    String? errors
    Int? fixed
    Int? fixed_bold
    Int? fixed_italic
    Int? fixed_bold_italic
    Boolean? lax
    String? l_quote
    File? name
    Boolean? no_urls
    Boolean? official
    String? quotes
    Int? release
    File? section
    Boolean? stderr
    Boolean? utf_eight
    File? verbose
    String? var_output
  }
  command <<<
    pod2man \
      ~{var_output} \
      ~{if defined(center) then ("--center " +  '"' + center + '"') else ""} \
      ~{if defined(date) then ("--date " +  '"' + date + '"') else ""} \
      ~{if defined(errors) then ("--errors " +  '"' + errors + '"') else ""} \
      ~{if defined(fixed) then ("--fixed " +  '"' + fixed + '"') else ""} \
      ~{if defined(fixed_bold) then ("--fixedbold " +  '"' + fixed_bold + '"') else ""} \
      ~{if defined(fixed_italic) then ("--fixeditalic " +  '"' + fixed_italic + '"') else ""} \
      ~{if defined(fixed_bold_italic) then ("--fixedbolditalic " +  '"' + fixed_bold_italic + '"') else ""} \
      ~{if (lax) then "--lax" else ""} \
      ~{if defined(l_quote) then ("--lquote " +  '"' + l_quote + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (no_urls) then "--nourls" else ""} \
      ~{if (official) then "--official" else ""} \
      ~{if defined(quotes) then ("--quotes " +  '"' + quotes + '"') else ""} \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if (stderr) then "--stderr" else ""} \
      ~{if (utf_eight) then "--utf8" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    center: "Sets the centered page header for the \\\".TH\\\" macro to string. The\\ndefault is \\\"User Contributed Perl Documentation\\\", but also see\\n--official below."
    date: "Set the left-hand footer string for the \\\".TH\\\" macro to string. By\\ndefault, the modification date of the input file will be used, or\\nthe current date if input comes from \\\"STDIN\\\", and will be based on\\nUTC (so that the output will be reproducible regardless of local\\ntime zone)."
    errors: "Set the error handling style. \\\"die\\\" says to throw an exception on\\nany POD formatting error. \\\"stderr\\\" says to report errors on standard\\nerror, but not to throw an exception. \\\"pod\\\" says to include a POD\\nERRORS section in the resulting documentation summarizing the\\nerrors. \\\"none\\\" ignores POD errors entirely, as much as possible.\\nThe default is \\\"die\\\"."
    fixed: "The fixed-width font to use for verbatim text and code. Defaults to\\n\\\"CW\\\". Some systems may want \\\"CR\\\" instead. Only matters for troff(1)\\noutput."
    fixed_bold: "Bold version of the fixed-width font. Defaults to \\\"CB\\\". Only matters\\nfor troff(1) output."
    fixed_italic: "Italic version of the fixed-width font (actually, something of a\\nmisnomer, since most fixed-width fonts only have an oblique version,\\nnot an italic version). Defaults to \\\"CI\\\". Only matters for troff(1)\\noutput."
    fixed_bold_italic: "Bold italic (probably actually oblique) version of the fixed-width\\nfont. Pod::Man doesn't assume you have this, and defaults to \\\"CB\\\".\\nSome systems (such as Solaris) have this font available as \\\"CX\\\".\\nOnly matters for troff(1) output."
    lax: "No longer used. pod2man used to check its input for validity as a\\nmanual page, but this should now be done by podchecker(1) instead.\\nAccepted for backward compatibility; this option no longer does\\nanything."
    l_quote: "Sets the quote marks used to surround C<> text. --lquote sets the\\nleft quote mark and --rquote sets the right quote mark. Either may\\nalso be set to the special value \\\"none\\\", in which case no quote mark\\nis added on that side of C<> text (but the font is still changed for\\ntroff output).\\nAlso see the --quotes option, which can be used to set both quotes\\nat once. If both --quotes and one of the other options is set,\\n--lquote or --rquote overrides --quotes."
    name: "Set the name of the manual page for the \\\".TH\\\" macro to name. Without\\nthis option, the manual name is set to the uppercased base name of\\nthe file being converted unless the manual section is 3, in which\\ncase the path is parsed to see if it is a Perl module path. If it\\nis, a path like \\\".../lib/Pod/Man.pm\\\" is converted into a name like\\n\\\"Pod::Man\\\". This option, if given, overrides any automatic\\ndetermination of the name.\\nAlthough one does not have to follow this convention, be aware that\\nthe convention for UNIX man pages for commands is for the man page\\ntitle to be in all-uppercase, even if the command isn't.\\nThis option is probably not useful when converting multiple POD\\nfiles at once.\\nWhen converting POD source from standard input, the name will be set\\nto \\\"STDIN\\\" if this option is not provided. Providing this option is\\nstrongly recommended to set a meaningful manual page name."
    no_urls: "Normally, L<> formatting codes with a URL but anchor text are\\nformatted to show both the anchor text and the URL. In other words:\\nL<foo|http://example.com/>\\nis formatted as:\\nfoo <http://example.com/>\\nThis flag, if given, suppresses the URL when anchor text is given,\\nso this example would be formatted as just \\\"foo\\\". This can produce\\nless cluttered output in cases where the URLs are not particularly\\nimportant."
    official: "Set the default header to indicate that this page is part of the\\nstandard Perl release, if --center is not also given."
    quotes: "Sets the quote marks used to surround C<> text to quotes. If quotes\\nis a single character, it is used as both the left and right quote.\\nOtherwise, it is split in half, and the first half of the string is\\nused as the left quote and the second is used as the right quote.\\nquotes may also be set to the special value \\\"none\\\", in which case no\\nquote marks are added around C<> text (but the font is still changed\\nfor troff output).\\nAlso see the --lquote and --rquote options, which can be used to set\\nthe left and right quotes independently. If both --quotes and one of\\nthe other options is set, --lquote or --rquote overrides --quotes."
    release: "Set the centered footer for the \\\".TH\\\" macro to version. By default,\\nthis is set to the version of Perl you run pod2man under. Setting\\nthis to the empty string will cause some *roff implementations to\\nuse the system default value.\\nNote that some system \\\"an\\\" macro sets assume that the centered\\nfooter will be a modification date and will prepend something like\\n\\\"Last modified: \\\". If this is the case for your target system, you\\nmay want to set --release to the last modified date and --date to\\nthe version number."
    section: "Set the section for the \\\".TH\\\" macro. The standard section numbering\\nconvention is to use 1 for user commands, 2 for system calls, 3 for\\nfunctions, 4 for devices, 5 for file formats, 6 for games, 7 for\\nmiscellaneous information, and 8 for administrator commands. There\\nis a lot of variation here, however; some systems (like Solaris) use\\n4 for file formats, 5 for miscellaneous information, and 7 for\\ndevices. Still others use 1m instead of 8, or some mix of both.\\nAbout the only section numbers that are reliably consistent are 1,\\n2, and 3.\\nBy default, section 1 will be used unless the file ends in \\\".pm\\\", in\\nwhich case section 3 will be selected."
    stderr: "By default, pod2man dies if any errors are detected in the POD\\ninput. If --stderr is given and no --errors flag is present, errors\\nare sent to standard error, but pod2man does not abort. This is\\nequivalent to \\\"--errors=stderr\\\" and is supported for backward\\ncompatibility."
    utf_eight: "By default, pod2man produces the most conservative possible *roff\\noutput to try to ensure that it will work with as many different\\n*roff implementations as possible. Many *roff implementations cannot\\nhandle non-ASCII characters, so this means all non-ASCII characters\\nare converted either to a *roff escape sequence that tries to create\\na properly accented character (at least for troff output) or to \\\"X\\\".\\nThis option says to instead output literal UTF-8 characters. If your\\n*roff implementation can handle it, this is the best output format\\nto use and avoids corruption of documents containing non-ASCII\\ncharacters. However, be warned that *roff source with literal UTF-8\\ncharacters is not supported by many implementations and may even\\nresult in segfaults and other bad behavior.\\nBe aware that, when using this option, the input encoding of your\\nPOD source should be properly declared unless it's US-ASCII.\\nPod::Simple will attempt to guess the encoding and may be successful\\nif it's Latin-1 or UTF-8, but it will warn, which by default results\\nin a pod2man failure. Use the \\\"=encoding\\\" command to declare the\\nencoding. See perlpod(1) for more information."
    verbose: "Print out the name of each output file as it is being generated.\\n"
    var_output: ""
  }
  output {
    File out_stdout = stdout()
    File out_verbose = "${in_verbose}"
  }
}