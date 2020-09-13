version 1.0

task Tidyp {
  input {
    File? write_output_specified
    File? config
    File? file
    Boolean? modify
    Boolean? indent
    Int? wrap
    Boolean? upper
    Boolean? clean
    Boolean? bare
    Boolean? numeric
    Boolean? errors
    Boolean? quiet
    Boolean? omit
    Boolean? xml
    Boolean? as_xhtml
    Boolean? as_html
    Int? access
    Boolean? raw
    Boolean? ascii
    Boolean? latin_zero
    Boolean? latin_one
    Boolean? iso_two_zero_two_two
    Boolean? utf_eight
    Boolean? mac
    Boolean? win_one_two_five_two
    Boolean? ibm_eight_five_eight
    Boolean? utf_one_six_le
    Boolean? utf_one_six_be
    Boolean? utf_one_six
    Boolean? big_five
    Boolean? shift_jis
    String? language
    Boolean? version
    Boolean? xml_help
    Boolean? help_config
    Boolean? xml_config
    Boolean? show_config
  }
  command <<<
    tidyp \
      ~{if defined(write_output_specified) then ("-output " +  '"' + write_output_specified + '"') else ""} \
      ~{if defined(config) then ("-config " +  '"' + config + '"') else ""} \
      ~{if defined(file) then ("-file " +  '"' + file + '"') else ""} \
      ~{if (modify) then "-modify" else ""} \
      ~{if (indent) then "-indent" else ""} \
      ~{if defined(wrap) then ("-wrap " +  '"' + wrap + '"') else ""} \
      ~{if (upper) then "-upper" else ""} \
      ~{if (clean) then "-clean" else ""} \
      ~{if (bare) then "-bare" else ""} \
      ~{if (numeric) then "-numeric" else ""} \
      ~{if (errors) then "-errors" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (omit) then "-omit" else ""} \
      ~{if (xml) then "-xml" else ""} \
      ~{if (as_xhtml) then "-asxhtml" else ""} \
      ~{if (as_html) then "-ashtml" else ""} \
      ~{if defined(access) then ("-access " +  '"' + access + '"') else ""} \
      ~{if (raw) then "-raw" else ""} \
      ~{if (ascii) then "-ascii" else ""} \
      ~{if (latin_zero) then "-latin0" else ""} \
      ~{if (latin_one) then "-latin1" else ""} \
      ~{if (iso_two_zero_two_two) then "-iso2022" else ""} \
      ~{if (utf_eight) then "-utf8" else ""} \
      ~{if (mac) then "-mac" else ""} \
      ~{if (win_one_two_five_two) then "-win1252" else ""} \
      ~{if (ibm_eight_five_eight) then "-ibm858" else ""} \
      ~{if (utf_one_six_le) then "-utf16le" else ""} \
      ~{if (utf_one_six_be) then "-utf16be" else ""} \
      ~{if (utf_one_six) then "-utf16" else ""} \
      ~{if (big_five) then "-big5" else ""} \
      ~{if (shift_jis) then "-shiftjis" else ""} \
      ~{if defined(language) then ("-language " +  '"' + language + '"') else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (xml_help) then "-xml-help" else ""} \
      ~{if (help_config) then "-help-config" else ""} \
      ~{if (xml_config) then "-xml-config" else ""} \
      ~{if (show_config) then "-show-config" else ""}
  >>>
  parameter_meta {
    write_output_specified: "write output to the specified <file>"
    config: "set configuration options from the specified <file>"
    file: "write errors and warnings to the specified <file>"
    modify: "modify the original input files"
    indent: "indent element content"
    wrap: "wrap text at the specified <column>. 0 is assumed if"
    upper: "force tags to upper case"
    clean: "replace FONT, NOBR and CENTER tags by CSS"
    bare: "strip out smart quotes and em dashes, etc."
    numeric: "output numeric rather than named entities"
    errors: "show only errors and warnings"
    quiet: "suppress nonessential output"
    omit: "omit optional end tags"
    xml: "specify the input is well formed XML"
    as_xhtml: "convert HTML to well formed XHTML"
    as_html: "force XHTML to well formed HTML"
    access: "do additional accessibility checks (<level> = 0, 1, 2, 3).\\n0 is assumed if <level> is missing."
    raw: "output values above 127 without conversion to entities"
    ascii: "use ISO-8859-1 for input, US-ASCII for output"
    latin_zero: "use ISO-8859-15 for input, US-ASCII for output"
    latin_one: "use ISO-8859-1 for both input and output"
    iso_two_zero_two_two: "use ISO-2022 for both input and output"
    utf_eight: "use UTF-8 for both input and output"
    mac: "use MacRoman for input, US-ASCII for output"
    win_one_two_five_two: "use Windows-1252 for input, US-ASCII for output"
    ibm_eight_five_eight: "use IBM-858 (CP850+Euro) for input, US-ASCII for output"
    utf_one_six_le: "use UTF-16LE for both input and output"
    utf_one_six_be: "use UTF-16BE for both input and output"
    utf_one_six: "use UTF-16 for both input and output"
    big_five: "use Big5 for both input and output"
    shift_jis: "use Shift_JIS for both input and output"
    language: "set the two-letter language code <lang> (for future use)"
    version: "show the version of Tidy"
    xml_help: "list the command line options in XML format"
    help_config: "list all configuration options"
    xml_config: "list all configuration options in XML format"
    show_config: "list the current configuration settings"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_specified = "${in_write_output_specified}"
  }
}