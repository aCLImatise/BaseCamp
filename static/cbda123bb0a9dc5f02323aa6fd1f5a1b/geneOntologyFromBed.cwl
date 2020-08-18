class: CommandLineTool
id: ../../../geneOntologyFromBed.py.cwl
inputs:
- id: mode
  doc: choose mode
  type: string
  inputBinding:
    prefix: --mode
- id: exp_matrix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- geneOntologyFromBed.py
