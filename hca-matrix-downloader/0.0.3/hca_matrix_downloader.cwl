class: CommandLineTool
id: hca_matrix_downloader.cwl
inputs:
- id: project
  doc: The project's Project Title, Project Label or link- derived ID, obtained from
    the HCA DCP, wrapped in quotes.
  type: string
  inputBinding:
    prefix: --project
- id: query
  doc: A complete /v1/matrix/ POST query in JSON format. Consult https://matrix.dev.data.humancellatlas.org/
    for details.
  type: string
  inputBinding:
    prefix: --query
- id: format
  doc: 'Format to download matrix in: loom, csv or mtx (Matrix Market). Defaults to
    loom.'
  type: string
  inputBinding:
    prefix: --format
- id: out_prefix
  doc: Output prefix for downloaded matrix. Leave default name (the Matrix API request
    ID) if not specified.
  type: string
  inputBinding:
    prefix: --outprefix
outputs: []
cwlVersion: v1.1
baseCommand:
- hca-matrix-downloader
