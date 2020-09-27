class: CommandLineTool
id: igdiscover_commonv.cwl
inputs:
- id: in_minimum_frequency
  doc: "Minimum number of datasets in which sequence must\noccur (default is no. of\
    \ files divided by two)\n"
  type: long
  inputBinding:
    prefix: --minimum-frequency
- id: in_table
  doc: "Tables with parsed and filtered IgBLAST results (give\nat least two)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- igdiscover
- commonv
