class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/proda.cwl
inputs:
- id: l
  doc: ''
  type: long
  inputBinding:
    prefix: -L
- id: silent
  doc: ''
  type: boolean
  inputBinding:
    prefix: -silent
- id: posterior
  doc: ''
  type: boolean
  inputBinding:
    prefix: -posterior
- id: tran
  doc: ''
  type: boolean
  inputBinding:
    prefix: -tran
- id: fast_a
  doc: ''
  type: boolean
  inputBinding:
    prefix: -fasta
- id: filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- proda
