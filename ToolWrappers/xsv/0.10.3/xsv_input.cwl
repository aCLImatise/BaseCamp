class: CommandLineTool
id: xsv_input.cwl
inputs:
- id: in_quote
  doc: 'The quote character to use. [default: "]'
  type: string?
  inputBinding:
    prefix: --quote
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
- input
