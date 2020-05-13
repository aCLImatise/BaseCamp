class: CommandLineTool
id: domtblout2gene_generic.py.cwl
inputs:
- id: generate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: summary
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: matrix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: filtered
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: best
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: hmmer
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: annotation
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: files
  doc: ''
  type: File
  inputBinding:
    position: 9
outputs: []
cwlVersion: v1.1
baseCommand:
- domtblout2gene_generic.py
