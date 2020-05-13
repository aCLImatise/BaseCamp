class: CommandLineTool
id: fermi_pe2cofq_in2.fq.cwl
inputs:
- id: in1fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in2fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- pe2cofq
- in2.fq
