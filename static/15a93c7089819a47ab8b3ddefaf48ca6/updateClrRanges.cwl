class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/updateClrRanges.cwl
inputs:
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: bank_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: seqname_do_tend_five_do_tend_three_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- updateClrRanges
