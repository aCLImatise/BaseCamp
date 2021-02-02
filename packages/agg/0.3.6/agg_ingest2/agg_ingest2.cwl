class: CommandLineTool
id: agg_ingest2.cwl
inputs:
- id: in_output
  doc: agg will output output_prefix.bcf and output_prefix.dpt
  type: string
  inputBinding:
    prefix: --output
- id: in_thread
  doc: number of compression threads [0]
  type: long
  inputBinding:
    prefix: --thread
- id: in_list
  doc: files.txt             plain text file listing agg chunks to merge]
  type: boolean
  inputBinding:
    prefix: --list
- id: in_input_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- agg
- ingest2
