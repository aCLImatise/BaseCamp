class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rqcfilter.sh.cwl
inputs:
- id: rqc_filter_two_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- rqcfilter.sh
