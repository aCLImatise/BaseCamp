class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/chromosomer_fastalength_output.cwl
inputs:
- id: chromosome_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_length
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- fastalength
- output
