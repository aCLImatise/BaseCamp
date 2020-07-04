class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/uniqueseq.cwl
inputs:
- id: db
  doc: '[-db seq_filen]*   one or more sequence files OR'
  type: string
  inputBinding:
    prefix: -db
- id: align_file
  doc: a sequence alignment file
  type: string
  inputBinding:
    prefix: -alignfile
- id: train
  doc: training sequence file
  type: string
  inputBinding:
    prefix: -train
- id: verbose
  doc: or 1                 provide more (1) or less (0) output
  type: string
  inputBinding:
    prefix: -verbose
- id: percentid
  doc: fraction identical in alignment to drop (1.0)
  type: string
  inputBinding:
    prefix: -percentid
- id: option
  doc: ''
  type: string
  inputBinding:
    prefix: -option
- id: run_name
  doc: required
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- uniqueseq
