#!/usr/bin/env cwl-runner

baseCommand:
- tidyp
class: CommandLineTool
cwlVersion: v1.0
id: tidyp
inputs:
- doc: 'modify the original input files                           '
  id: modify
  inputBinding:
    prefix: -modify
  type: boolean
- doc: 'force tags to upper case                                  '
  id: upper
  inputBinding:
    prefix: -upper
  type: boolean
- doc: 'replace FONT, NOBR and CENTER tags by CSS                 '
  id: clean
  inputBinding:
    prefix: -clean
  type: boolean
- doc: 'strip out smart quotes and em dashes, etc.                '
  id: bare
  inputBinding:
    prefix: -bare
  type: boolean
- doc: 'output numeric rather than named entities                 '
  id: numeric
  inputBinding:
    prefix: -numeric
  type: boolean
- doc: 'show only errors and warnings                             '
  id: errors
  inputBinding:
    prefix: -errors
  type: boolean
- doc: 'suppress nonessential output                              '
  id: quiet
  inputBinding:
    prefix: -quiet
  type: boolean
- doc: 'omit optional end tags                                    '
  id: omit
  inputBinding:
    prefix: -omit
  type: boolean
- doc: 'specify the input is well formed XML                      '
  id: xml
  inputBinding:
    prefix: -xml
  type: boolean
- doc: 'convert HTML to well formed XHTML                         '
  id: as_xhtml
  inputBinding:
    prefix: -asxhtml
  type: boolean
- doc: 'force XHTML to well formed HTML                           '
  id: as_html
  inputBinding:
    prefix: -ashtml
  type: boolean
- doc: 'do additional accessibility checks (<level> = 0, 1, 2, 3). 0 is assumed if
    <level> is missing.                       '
  id: access
  inputBinding:
    prefix: -access
  type: string
- doc: 'output values above 127 without conversion to entities    '
  id: raw
  inputBinding:
    prefix: -raw
  type: boolean
- doc: 'use ISO-8859-1 for input, US-ASCII for output             '
  id: ascii
  inputBinding:
    prefix: -ascii
  type: boolean
- doc: 'use ISO-8859-15 for input, US-ASCII for output            '
  id: latin_0
  inputBinding:
    prefix: -latin0
  type: boolean
- doc: 'use ISO-8859-1 for both input and output                  '
  id: latin_1
  inputBinding:
    prefix: -latin1
  type: boolean
- doc: 'use ISO-2022 for both input and output                    '
  id: iso2022
  inputBinding:
    prefix: -iso2022
  type: boolean
- doc: 'use UTF-8 for both input and output                       '
  id: utf8
  inputBinding:
    prefix: -utf8
  type: boolean
- doc: 'use MacRoman for input, US-ASCII for output               '
  id: mac
  inputBinding:
    prefix: -mac
  type: boolean
- doc: 'use Windows-1252 for input, US-ASCII for output           '
  id: win1252
  inputBinding:
    prefix: -win1252
  type: boolean
- doc: 'use IBM-858 (CP850+Euro) for input, US-ASCII for output   '
  id: ibm858
  inputBinding:
    prefix: -ibm858
  type: boolean
- doc: 'use UTF-16LE for both input and output                    '
  id: utf16le
  inputBinding:
    prefix: -utf16le
  type: boolean
- doc: 'use UTF-16BE for both input and output                    '
  id: utf16be
  inputBinding:
    prefix: -utf16be
  type: boolean
- doc: 'use UTF-16 for both input and output                      '
  id: utf16
  inputBinding:
    prefix: -utf16
  type: boolean
- doc: 'use Big5 for both input and output                        '
  id: big5
  inputBinding:
    prefix: -big5
  type: boolean
- doc: 'use Shift_JIS for both input and output                   '
  id: shift_jis
  inputBinding:
    prefix: -shiftjis
  type: boolean
- doc: 'set the two-letter language code <lang> (for future use)  '
  id: language
  inputBinding:
    prefix: -language
  type: string
- doc: 'show the version of Tidy                                  '
  id: version
  inputBinding:
    prefix: -version
  type: boolean
- doc: 'list the command line options in XML format               '
  id: xml_help
  inputBinding:
    prefix: -xml-help
  type: boolean
- doc: 'list all configuration options                            '
  id: help_config
  inputBinding:
    prefix: -help-config
  type: boolean
- doc: 'list all configuration options in XML format              '
  id: xml_config
  inputBinding:
    prefix: -xml-config
  type: boolean
- doc: 'list the current configuration settings                   '
  id: show_config
  inputBinding:
    prefix: -show-config
  type: boolean
