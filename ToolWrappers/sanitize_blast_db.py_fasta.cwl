class: CommandLineTool
id: sanitize_blast_db.py_fasta.cwl
inputs:
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_ml
  doc: ''
  type: string
  inputBinding:
    prefix: -ml
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sanitize_blast_db.py
- fasta
