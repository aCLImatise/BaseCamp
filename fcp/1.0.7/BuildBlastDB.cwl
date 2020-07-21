class: CommandLineTool
id: ../../../BuildBlastDB.py.cwl
inputs:
- id: make_blast_db_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- BuildBlastDB.py
