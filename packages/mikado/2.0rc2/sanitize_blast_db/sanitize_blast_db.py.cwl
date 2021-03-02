class: CommandLineTool
id: ../../../sanitize_blast_db.py.cwl
inputs:
- id: in_min_length
  doc: ''
  type: long
  inputBinding:
    prefix: --min-length
- id: in_out
  doc: ''
  type: string
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sanitize_blast_db.py
