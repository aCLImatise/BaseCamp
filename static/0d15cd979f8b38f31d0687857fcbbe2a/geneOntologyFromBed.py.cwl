class: CommandLineTool
id: geneOntologyFromBed.py.cwl
inputs:
- id: in_mode
  doc: choose mode
  type: string?
  inputBinding:
    prefix: --mode
- id: in_exp_matrix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- geneOntologyFromBed.py
