class: CommandLineTool
id: agg_ingest2.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- agg
- ingest2
