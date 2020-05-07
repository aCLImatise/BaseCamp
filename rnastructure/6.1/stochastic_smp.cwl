class: CommandLineTool
id: stochastic_smp.cwl
inputs:
- id: stochastic
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ct_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- stochastic-smp
