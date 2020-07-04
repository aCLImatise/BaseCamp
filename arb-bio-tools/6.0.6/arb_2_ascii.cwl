class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/arb_2_ascii.cwl
inputs:
- id: r
  doc: ''
  type: boolean
  inputBinding:
    prefix: -r
- id: source_dot_arb
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- arb_2_ascii
