class: CommandLineTool
id: ffindex_from_fasta.cwl
inputs:
- id: in_sort_index_file
  doc: sort index file
  type: boolean
  inputBinding:
    prefix: -s
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ffindex_from_fasta
