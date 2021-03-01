class: CommandLineTool
id: tidyp.cwl
inputs:
- id: in_output
  doc: write output to the specified <file>
  type: File?
  inputBinding:
    prefix: -output
- id: in_config
  doc: set configuration options from the specified <file>
  type: File?
  inputBinding:
    prefix: -config
- id: in_file
  doc: write errors and warnings to the specified <file>
  type: File?
  inputBinding:
    prefix: -file
- id: in_modify
  doc: modify the original input files
  type: boolean?
  inputBinding:
    prefix: -modify
- id: in_indent
  doc: indent element content
  type: boolean?
  inputBinding:
    prefix: -indent
- id: in_wrap
  doc: wrap text at the specified <column>. 0 is assumed if
  type: long?
  inputBinding:
    prefix: -wrap
- id: in_upper
  doc: force tags to upper case
  type: boolean?
  inputBinding:
    prefix: -upper
- id: in_clean
  doc: replace FONT, NOBR and CENTER tags by CSS
  type: boolean?
  inputBinding:
    prefix: -clean
- id: in_bare
  doc: strip out smart quotes and em dashes, etc.
  type: boolean?
  inputBinding:
    prefix: -bare
- id: in_numeric
  doc: output numeric rather than named entities
  type: boolean?
  inputBinding:
    prefix: -numeric
- id: in_errors
  doc: show only errors and warnings
  type: boolean?
  inputBinding:
    prefix: -errors
- id: in_quiet
  doc: suppress nonessential output
  type: boolean?
  inputBinding:
    prefix: -quiet
- id: in_omit
  doc: omit optional end tags
  type: boolean?
  inputBinding:
    prefix: -omit
- id: in_xml
  doc: specify the input is well formed XML
  type: boolean?
  inputBinding:
    prefix: -xml
- id: in_as_xhtml
  doc: convert HTML to well formed XHTML
  type: boolean?
  inputBinding:
    prefix: -asxhtml
- id: in_as_html
  doc: force XHTML to well formed HTML
  type: boolean?
  inputBinding:
    prefix: -ashtml
- id: in_access
  doc: "do additional accessibility checks (<level> = 0, 1, 2, 3).\n0 is assumed if\
    \ <level> is missing."
  type: long?
  inputBinding:
    prefix: -access
- id: in_raw
  doc: output values above 127 without conversion to entities
  type: boolean?
  inputBinding:
    prefix: -raw
- id: in_ascii
  doc: use ISO-8859-1 for input, US-ASCII for output
  type: boolean?
  inputBinding:
    prefix: -ascii
- id: in_latin_zero
  doc: use ISO-8859-15 for input, US-ASCII for output
  type: boolean?
  inputBinding:
    prefix: -latin0
- id: in_latin_one
  doc: use ISO-8859-1 for both input and output
  type: boolean?
  inputBinding:
    prefix: -latin1
- id: in_iso_two_zero_two_two
  doc: use ISO-2022 for both input and output
  type: boolean?
  inputBinding:
    prefix: -iso2022
- id: in_utf_eight
  doc: use UTF-8 for both input and output
  type: boolean?
  inputBinding:
    prefix: -utf8
- id: in_mac
  doc: use MacRoman for input, US-ASCII for output
  type: boolean?
  inputBinding:
    prefix: -mac
- id: in_win_one_two_five_two
  doc: use Windows-1252 for input, US-ASCII for output
  type: boolean?
  inputBinding:
    prefix: -win1252
- id: in_ibm_eight_five_eight
  doc: use IBM-858 (CP850+Euro) for input, US-ASCII for output
  type: boolean?
  inputBinding:
    prefix: -ibm858
- id: in_utf_one_six_le
  doc: use UTF-16LE for both input and output
  type: boolean?
  inputBinding:
    prefix: -utf16le
- id: in_utf_one_six_be
  doc: use UTF-16BE for both input and output
  type: boolean?
  inputBinding:
    prefix: -utf16be
- id: in_utf_one_six
  doc: use UTF-16 for both input and output
  type: boolean?
  inputBinding:
    prefix: -utf16
- id: in_big_five
  doc: use Big5 for both input and output
  type: boolean?
  inputBinding:
    prefix: -big5
- id: in_shift_jis
  doc: use Shift_JIS for both input and output
  type: boolean?
  inputBinding:
    prefix: -shiftjis
- id: in_language
  doc: set the two-letter language code <lang> (for future use)
  type: string?
  inputBinding:
    prefix: -language
- id: in_version
  doc: show the version of Tidy
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_xml_help
  doc: list the command line options in XML format
  type: boolean?
  inputBinding:
    prefix: -xml-help
- id: in_help_config
  doc: list all configuration options
  type: boolean?
  inputBinding:
    prefix: -help-config
- id: in_xml_config
  doc: list all configuration options in XML format
  type: boolean?
  inputBinding:
    prefix: -xml-config
- id: in_show_config
  doc: list the current configuration settings
  type: boolean?
  inputBinding:
    prefix: -show-config
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: write output to the specified <file>
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- tidyp
