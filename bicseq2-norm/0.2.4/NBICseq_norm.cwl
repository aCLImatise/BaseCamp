class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/NBICseq_norm.pl.cwl
inputs:
- id: config_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- NBICseq-norm.pl
