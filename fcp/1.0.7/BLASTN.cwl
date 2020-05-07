class: CommandLineTool
id: BLASTN.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: blast_npy
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: blastn_path
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: query_file
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: results_file
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- BLASTN.py
