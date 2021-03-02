class: CommandLineTool
id: jannovar_download_Optional.cwl
inputs:
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -s
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -d
- id: in_jan_novar_cli
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_download
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/jannovar-cli:0.35--0
cwlVersion: v1.1
baseCommand:
- jannovar
- download
- Optional
