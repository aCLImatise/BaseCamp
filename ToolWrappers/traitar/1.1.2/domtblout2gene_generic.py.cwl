class: CommandLineTool
id: domtblout2gene_generic.py.cwl
inputs:
- id: in_generate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_summary
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_matrix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_filtered
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_best
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_hmmer
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_annotation
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- domtblout2gene_generic.py
