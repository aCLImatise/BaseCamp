class: CommandLineTool
id: checkv_download_database.cwl
inputs:
- id: in_quiet
  doc: Suppress logging messages
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_destination
  doc: Directory where the database will be downloaded to.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/checkv:0.7.0--py_1
cwlVersion: v1.1
baseCommand:
- checkv
- download_database
