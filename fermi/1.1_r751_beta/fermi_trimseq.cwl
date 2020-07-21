class: CommandLineTool
id: ../../../fermi_trimseq.cwl
inputs:
- id: n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -N
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- trimseq
