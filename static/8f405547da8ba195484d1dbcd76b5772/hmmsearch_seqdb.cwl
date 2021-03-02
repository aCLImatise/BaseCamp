class: CommandLineTool
id: hmmsearch_seqdb.cwl
inputs:
- id: in_hmm_search
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_seq_db
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hmmsearch
- seqdb
