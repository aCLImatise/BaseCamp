class: CommandLineTool
id: hmmsearch_hmmfile.cwl
inputs:
- id: seq_db
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hmmsearch
- hmmfile
