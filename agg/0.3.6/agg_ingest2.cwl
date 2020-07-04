class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agg_ingest2.cwl
inputs:
- id: output
  doc: agg will output output_prefix.bcf and output_prefix.dpt
  type: string
  inputBinding:
    prefix: --output
- id: thread
  doc: number of compression threads [0]
  type: long
  inputBinding:
    prefix: --thread
- id: list
  doc: files.txt             plain text file listing agg chunks to merge]
  type: boolean
  inputBinding:
    prefix: --list
- id: input_one
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- agg
- ingest2
