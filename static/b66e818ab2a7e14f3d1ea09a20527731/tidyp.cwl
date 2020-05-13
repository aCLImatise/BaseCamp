class: CommandLineTool
id: tidyp.cwl
inputs:
- id: modify
  doc: 'modify the original input files                           '
  type: boolean
  inputBinding:
    prefix: -modify
- id: upper
  doc: 'force tags to upper case                                  '
  type: boolean
  inputBinding:
    prefix: -upper
- id: clean
  doc: 'replace FONT, NOBR and CENTER tags by CSS                 '
  type: boolean
  inputBinding:
    prefix: -clean
- id: bare
  doc: 'strip out smart quotes and em dashes, etc.                '
  type: boolean
  inputBinding:
    prefix: -bare
- id: numeric
  doc: 'output numeric rather than named entities                 '
  type: boolean
  inputBinding:
    prefix: -numeric
- id: errors
  doc: 'show only errors and warnings                             '
  type: boolean
  inputBinding:
    prefix: -errors
- id: quiet
  doc: 'suppress nonessential output                              '
  type: boolean
  inputBinding:
    prefix: -quiet
- id: omit
  doc: 'omit optional end tags                                    '
  type: boolean
  inputBinding:
    prefix: -omit
- id: xml
  doc: 'specify the input is well formed XML                      '
  type: boolean
  inputBinding:
    prefix: -xml
- id: as_xhtml
  doc: 'convert HTML to well formed XHTML                         '
  type: boolean
  inputBinding:
    prefix: -asxhtml
- id: as_html
  doc: 'force XHTML to well formed HTML                           '
  type: boolean
  inputBinding:
    prefix: -ashtml
- id: access
  doc: 'do additional accessibility checks (<level> = 0, 1, 2, 3). 0 is assumed if
    <level> is missing.                       '
  type: string
  inputBinding:
    prefix: -access
- id: raw
  doc: 'output values above 127 without conversion to entities    '
  type: boolean
  inputBinding:
    prefix: -raw
- id: ascii
  doc: 'use ISO-8859-1 for input, US-ASCII for output             '
  type: boolean
  inputBinding:
    prefix: -ascii
- id: latin_0
  doc: 'use ISO-8859-15 for input, US-ASCII for output            '
  type: boolean
  inputBinding:
    prefix: -latin0
- id: latin_1
  doc: 'use ISO-8859-1 for both input and output                  '
  type: boolean
  inputBinding:
    prefix: -latin1
- id: iso2022
  doc: 'use ISO-2022 for both input and output                    '
  type: boolean
  inputBinding:
    prefix: -iso2022
- id: utf8
  doc: 'use UTF-8 for both input and output                       '
  type: boolean
  inputBinding:
    prefix: -utf8
- id: mac
  doc: 'use MacRoman for input, US-ASCII for output               '
  type: boolean
  inputBinding:
    prefix: -mac
- id: win1252
  doc: 'use Windows-1252 for input, US-ASCII for output           '
  type: boolean
  inputBinding:
    prefix: -win1252
- id: ibm858
  doc: 'use IBM-858 (CP850+Euro) for input, US-ASCII for output   '
  type: boolean
  inputBinding:
    prefix: -ibm858
- id: utf16le
  doc: 'use UTF-16LE for both input and output                    '
  type: boolean
  inputBinding:
    prefix: -utf16le
- id: utf16be
  doc: 'use UTF-16BE for both input and output                    '
  type: boolean
  inputBinding:
    prefix: -utf16be
- id: utf16
  doc: 'use UTF-16 for both input and output                      '
  type: boolean
  inputBinding:
    prefix: -utf16
- id: big5
  doc: 'use Big5 for both input and output                        '
  type: boolean
  inputBinding:
    prefix: -big5
- id: shift_jis
  doc: 'use Shift_JIS for both input and output                   '
  type: boolean
  inputBinding:
    prefix: -shiftjis
- id: language
  doc: 'set the two-letter language code <lang> (for future use)  '
  type: string
  inputBinding:
    prefix: -language
- id: version
  doc: 'show the version of Tidy                                  '
  type: boolean
  inputBinding:
    prefix: -version
- id: xml_help
  doc: 'list the command line options in XML format               '
  type: boolean
  inputBinding:
    prefix: -xml-help
- id: help_config
  doc: 'list all configuration options                            '
  type: boolean
  inputBinding:
    prefix: -help-config
- id: xml_config
  doc: 'list all configuration options in XML format              '
  type: boolean
  inputBinding:
    prefix: -xml-config
- id: show_config
  doc: 'list the current configuration settings                   '
  type: boolean
  inputBinding:
    prefix: -show-config
outputs: []
cwlVersion: v1.1
baseCommand:
- tidyp
