class: CommandLineTool
id: calibrate.sh.cwl
inputs:
- id: output_filed_at
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: trans_term
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- calibrate.sh
