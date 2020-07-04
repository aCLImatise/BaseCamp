class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/esl_reformat_seqfile.cwl
inputs:
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: esl_reformat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: format
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-reformat
- seqfile
