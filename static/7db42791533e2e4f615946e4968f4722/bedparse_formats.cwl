class: CommandLineTool
id: bedparse_formats.cwl
inputs:
- id: in_bed_parse
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedparse
- formats
