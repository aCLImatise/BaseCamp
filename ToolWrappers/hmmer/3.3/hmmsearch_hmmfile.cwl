class: CommandLineTool
id: hmmsearch_hmmfile.cwl
inputs:
- id: in_seq_db
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
- hmmsearch
- hmmfile
