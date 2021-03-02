class: CommandLineTool
id: SeqSero2_update_kmer_database.py.cwl
inputs:
- id: in_just
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_type
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SeqSero2_update_kmer_database.py
