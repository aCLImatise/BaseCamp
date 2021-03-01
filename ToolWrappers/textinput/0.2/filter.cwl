class: CommandLineTool
id: filter.cwl
inputs:
- id: in_no_header
  doc: input does not contain a header line
  type: boolean?
  inputBinding:
    prefix: --no-header
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- filter
