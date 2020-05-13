class: CommandLineTool
id: tabview.cwl
inputs:
- id: filename
  doc: File to read. Use '-' to read from the standard input instead.
  type: File
  inputBinding:
    position: 0
- id: encoding
  doc: Encoding, if required. If the file is UTF-8, Latin-1(iso8859-1) or a few other
    common encodings, it should be detected automatically. If not, you can pass 'CP720',
    or 'iso8859-2', for example.
  type: string
  inputBinding:
    prefix: --encoding
- id: delimiter
  doc: CSV delimiter. Not typically necessary since automatic delimiter sniffing is
    used.
  type: string
  inputBinding:
    prefix: --delimiter
- id: quoting
  doc: CSV quoting style. Not typically required.
  type: string
  inputBinding:
    prefix: --quoting
- id: start_pos
  doc: Initial cursor display position. Single number for just y (row) position, or
    two comma-separated numbers (--start_pos 2,3) for both. Alternatively, you can
    pass the numbers in the more classic +y:[x] format without the --start_pos label.
    Like 'tabview <fn> +5:10'
  type: string
  inputBinding:
    prefix: --start_pos
- id: width
  doc: Specify column width. 'max' or 'mode' (default) for variable widths, or an
    integer value for fixed column width.
  type: string
  inputBinding:
    prefix: --width
- id: double_width
  doc: Force full handling of double-width characters for large files (with a performance
    penalty)
  type: boolean
  inputBinding:
    prefix: --double_width
- id: quote_char
  doc: Quote character. Not typically necessary.
  type: string
  inputBinding:
    prefix: --quote-char
outputs: []
cwlVersion: v1.1
baseCommand:
- tabview
