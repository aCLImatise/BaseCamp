class: CommandLineTool
id: xsv_fmt.cwl
inputs:
- id: in_out_delimiter
  doc: "The field delimiter for writing CSV data.\n[default: ,]"
  type: string?
  inputBinding:
    prefix: --out-delimiter
- id: in_crlf
  doc: Use '\r\n' line endings in the output.
  type: boolean?
  inputBinding:
    prefix: --crlf
- id: in_ascii
  doc: Use ASCII field and record separators.
  type: boolean?
  inputBinding:
    prefix: --ascii
- id: in_quote
  doc: 'The quote character to use. [default: "]'
  type: string?
  inputBinding:
    prefix: --quote
- id: in_quote_always
  doc: Put quotes around every value.
  type: boolean?
  inputBinding:
    prefix: --quote-always
- id: in_escape
  doc: "The escape character to use. When not specified,\nquotes are escaped by doubling\
    \ them."
  type: string?
  inputBinding:
    prefix: --escape
- id: in_output
  doc: Write output to <file> instead of stdout.
  type: File?
  inputBinding:
    prefix: --output
- id: in_delimiter
  doc: "The field delimiter for reading CSV data.\nMust be a single character. [default:\
    \ ,]\n"
  type: string?
  inputBinding:
    prefix: --delimiter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Write output to <file> instead of stdout.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- xsv
- fmt
