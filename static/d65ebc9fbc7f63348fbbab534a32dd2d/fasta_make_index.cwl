class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fasta_make_index.cwl
inputs:
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
- id: sp
  doc: ''
  type: boolean
  inputBinding:
    prefix: -sp
- id: l
  doc: ''
  type: boolean
  inputBinding:
    prefix: -l
- id: aa
  doc: ''
  type: boolean
  inputBinding:
    prefix: -aa
- id: gc
  doc: ''
  type: boolean
  inputBinding:
    prefix: -gc
- id: gi
  doc: ''
  type: boolean
  inputBinding:
    prefix: -gi
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta-make-index
