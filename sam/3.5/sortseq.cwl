class: CommandLineTool
id: ../../../sortseq.cwl
inputs:
- id: db
  doc: '[-db seq_fn]* one or more sequence files'
  type: string
  inputBinding:
    prefix: -db
- id: distfile
  doc: score file (.dist or .mstat)
  type: string
  inputBinding:
    prefix: -distfile
- id: option
  doc: ''
  type: string
  inputBinding:
    prefix: -option
- id: run_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sortseq
