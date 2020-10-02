class: CommandLineTool
id: primer3_core.cwl
inputs:
- id: in_format_output
  doc: ''
  type: boolean
  inputBinding:
    prefix: --format_output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- primer3_core
