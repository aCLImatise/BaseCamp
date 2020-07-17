class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cgpVCFSplit.pl.cwl
inputs:
- id: l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- cgpVCFSplit.pl
