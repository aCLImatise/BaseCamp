class: CommandLineTool
id: ../../../ffindex_from_fasta_with_split.cwl
inputs:
- id: sort_index_file
  doc: sort index file
  type: boolean
  inputBinding:
    prefix: -s
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- ffindex_from_fasta_with_split
