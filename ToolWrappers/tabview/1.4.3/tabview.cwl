class: CommandLineTool
id: tabview.cwl
inputs:
- id: in_encoding
  doc: "Encoding, if required. If the file is UTF-8,\nLatin-1(iso8859-1) or a few\
    \ other common encodings, it\nshould be detected automatically. If not, you can\
    \ pass\n'CP720', or 'iso8859-2', for example."
  type: File?
  inputBinding:
    prefix: --encoding
- id: in_delimiter
  doc: "CSV delimiter. Not typically necessary since automatic\ndelimiter sniffing\
    \ is used."
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_quoting
  doc: CSV quoting style. Not typically required.
  type: string?
  inputBinding:
    prefix: --quoting
- id: in_start_pos
  doc: "Initial cursor display position. Single number for\njust y (row) position,\
    \ or two comma-separated numbers\n(--start_pos 2,3) for both. Alternatively, you\
    \ can\npass the numbers in the more classic +y:[x] format\nwithout the --start_pos\
    \ label. Like 'tabview <fn>\n+5:10'"
  type: long?
  inputBinding:
    prefix: --start_pos
- id: in_width
  doc: "Specify column width. 'max' or 'mode' (default) for\nvariable widths, or an\
    \ integer value for fixed column\nwidth."
  type: long?
  inputBinding:
    prefix: --width
- id: in_double_width
  doc: "Force full handling of double-width characters for\nlarge files (with a performance\
    \ penalty)"
  type: boolean?
  inputBinding:
    prefix: --double_width
- id: in_quote_char
  doc: "Quote character. Not typically necessary.\n"
  type: string?
  inputBinding:
    prefix: --quote-char
- id: in_instead_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tabview
