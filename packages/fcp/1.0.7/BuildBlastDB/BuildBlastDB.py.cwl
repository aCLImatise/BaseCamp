class: CommandLineTool
id: BuildBlastDB.py.cwl
inputs:
- id: in_make_blast_db_path
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- BuildBlastDB.py
