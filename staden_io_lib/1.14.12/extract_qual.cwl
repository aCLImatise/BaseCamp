class: CommandLineTool
id: ../../../extract_qual.cwl
inputs:
- id: in_r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- extract_qual
