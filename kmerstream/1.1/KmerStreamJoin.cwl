class: CommandLineTool
id: KmerStreamJoin.cwl
inputs:
- id: km_er_stream_join
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: merged_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: verbose
  doc: Print output at the end
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- KmerStreamJoin
