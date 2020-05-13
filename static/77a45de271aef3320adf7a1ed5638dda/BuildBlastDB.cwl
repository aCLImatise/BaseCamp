class: CommandLineTool
id: BuildBlastDB.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: build_blast_dbp_y
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: make_blast_db_path
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- BuildBlastDB.py
