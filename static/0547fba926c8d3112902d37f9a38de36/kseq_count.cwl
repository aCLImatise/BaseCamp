class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kseq_count.cwl
inputs:
- id: a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -a
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- kseq_count
