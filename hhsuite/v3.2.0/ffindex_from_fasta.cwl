class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ffindex_from_fasta.cwl
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
- ffindex_from_fasta
