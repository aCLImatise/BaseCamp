class: CommandLineTool
id: ffindex_from_fasta_with_split.cwl
inputs:
- id: in_sort_index_file
  doc: sort index file
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ffindex_from_fasta_with_split
