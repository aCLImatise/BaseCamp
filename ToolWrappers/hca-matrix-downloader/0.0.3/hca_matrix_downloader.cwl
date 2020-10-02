class: CommandLineTool
id: hca_matrix_downloader.cwl
inputs:
- id: in_project
  doc: "The project's Project Title, Project Label or link-\nderived ID, obtained\
    \ from the HCA DCP, wrapped in\nquotes."
  type: string
  inputBinding:
    prefix: --project
- id: in_query
  doc: "A complete /v1/matrix/ POST query in JSON format.\nConsult https://matrix.dev.data.humancellatlas.org/\n\
    for details."
  type: long
  inputBinding:
    prefix: --query
- id: in_format
  doc: "Format to download matrix in: loom, csv or mtx (Matrix\nMarket). Defaults\
    \ to loom."
  type: string
  inputBinding:
    prefix: --format
- id: in_out_prefix
  doc: "Output prefix for downloaded matrix. Leave default\nname (the Matrix API request\
    \ ID) if not specified.\n"
  type: string
  inputBinding:
    prefix: --outprefix
- id: in_download
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_data
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_via
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_hca
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca-matrix-downloader
