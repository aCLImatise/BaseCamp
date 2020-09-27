class: CommandLineTool
id: lyner_changes.cwl
inputs:
- id: in_mode
  doc: '[likelihood|cdf]'
  type: boolean
  inputBinding:
    prefix: --mode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- changes
