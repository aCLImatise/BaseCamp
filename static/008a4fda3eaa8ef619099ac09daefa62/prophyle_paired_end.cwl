class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prophyle_paired_end.py_reads_2.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: prophy_le_paired_enddo_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reads_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: reads_two
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle_paired_end.py
- reads_2
