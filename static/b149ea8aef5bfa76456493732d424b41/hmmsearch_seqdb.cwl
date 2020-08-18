class: CommandLineTool
id: ../../../hmmsearch_seqdb.cwl
inputs:
- id: hmm_search
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: hmm_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: seq_db
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmsearch
- seqdb
