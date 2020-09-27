class: CommandLineTool
id: lyner_center.cwl
inputs:
- id: in_method
  doc: '[mean|median]'
  type: boolean
  inputBinding:
    prefix: --method
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- center
