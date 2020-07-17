version 1.0

task Tidyp {
  input {
    Boolean? modify
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
    String? access
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
      ~{true="-modify" false="" modify} \
      ~{true="-upper" false="" upper} \
      ~{true="-clean" false="" clean} \
      ~{true="-bare" false="" bare} \
      ~{true="-numeric" false="" numeric} \
      ~{true="-errors" false="" errors} \
      ~{true="-quiet" false="" quiet} \
      ~{true="-omit" false="" omit} \
      ~{true="-xml" false="" xml} \
      ~{true="-asxhtml" false="" as_xhtml} \
      ~{true="-ashtml" false="" as_html} \
      ~{if defined(access) then ("-access " +  '"' + access + '"') else ""} \
      ~{true="-raw" false="" raw} \
      ~{true="-ascii" false="" ascii} \
      ~{true="-latin0" false="" latin_zero} \
      ~{true="-latin1" false="" latin_one} \
      ~{true="-iso2022" false="" iso_two_zero_two_two} \
      ~{true="-utf8" false="" utf_eight} \
      ~{true="-mac" false="" mac} \
      ~{true="-win1252" false="" win_one_two_five_two} \
      ~{true="-ibm858" false="" ibm_eight_five_eight} \
      ~{true="-utf16le" false="" utf_one_six_le} \
      ~{true="-utf16be" false="" utf_one_six_be} \
      ~{true="-utf16" false="" utf_one_six} \
      ~{true="-big5" false="" big_five} \
      ~{true="-shiftjis" false="" shift_jis} \
      ~{if defined(language) then ("-language " +  '"' + language + '"') else ""} \
      ~{true="-version" false="" version} \
      ~{true="-xml-help" false="" xml_help} \
      ~{true="-help-config" false="" help_config} \
      ~{true="-xml-config" false="" xml_config} \
      ~{true="-show-config" false="" show_config}
  >>>
  parameter_meta {
    modify: "modify the original input files                           "
    upper: "force tags to upper case                                  "
    clean: "replace FONT, NOBR and CENTER tags by CSS                 "
    bare: "strip out smart quotes and em dashes, etc.                "
    numeric: "output numeric rather than named entities                 "
    errors: "show only errors and warnings                             "
    quiet: "suppress nonessential output                              "
    omit: "omit optional end tags                                    "
    xml: "specify the input is well formed XML                      "
    as_xhtml: "convert HTML to well formed XHTML                         "
    as_html: "force XHTML to well formed HTML                           "
    access: "do additional accessibility checks (<level> = 0, 1, 2, 3). 0 is assumed if <level> is missing.                       "
    raw: "output values above 127 without conversion to entities    "
    ascii: "use ISO-8859-1 for input, US-ASCII for output             "
    latin_zero: "use ISO-8859-15 for input, US-ASCII for output            "
    latin_one: "use ISO-8859-1 for both input and output                  "
    iso_two_zero_two_two: "use ISO-2022 for both input and output                    "
    utf_eight: "use UTF-8 for both input and output                       "
    mac: "use MacRoman for input, US-ASCII for output               "
    win_one_two_five_two: "use Windows-1252 for input, US-ASCII for output           "
    ibm_eight_five_eight: "use IBM-858 (CP850+Euro) for input, US-ASCII for output   "
    utf_one_six_le: "use UTF-16LE for both input and output                    "
    utf_one_six_be: "use UTF-16BE for both input and output                    "
    utf_one_six: "use UTF-16 for both input and output                      "
    big_five: "use Big5 for both input and output                        "
    shift_jis: "use Shift_JIS for both input and output                   "
    language: "set the two-letter language code <lang> (for future use)  "
    version: "show the version of Tidy                                  "
    xml_help: "list the command line options in XML format               "
    help_config: "list all configuration options                            "
    xml_config: "list all configuration options in XML format              "
    show_config: "list the current configuration settings                   "
  }
}