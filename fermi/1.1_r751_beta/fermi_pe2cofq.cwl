class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fermi_pe2cofq.cwl
inputs:
- id: in_one_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_two_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- pe2cofq
