class: CommandLineTool
id: MaxExpect_smp.cwl
inputs:
- id: max_expect
  doc: ''
  type: long
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
- MaxExpect-smp
