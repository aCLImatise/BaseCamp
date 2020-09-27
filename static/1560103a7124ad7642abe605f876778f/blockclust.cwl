class: CommandLineTool
id: blockclust.cwl
inputs:
- id: in_accept
  doc: '[accept annotations]'
  type: boolean
  inputBinding:
    prefix: --accept
- id: in_reject
  doc: '[reject annotations]'
  type: boolean
  inputBinding:
    prefix: --reject
- id: in_config
  doc: '[config file]'
  type: boolean
  inputBinding:
    prefix: --config
- id: in_out
  doc: '[output dir]'
  type: boolean
  inputBinding:
    prefix: --out
- id: in_block_clust
  doc: -i, --in       [blockbuster output]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- blockclust
