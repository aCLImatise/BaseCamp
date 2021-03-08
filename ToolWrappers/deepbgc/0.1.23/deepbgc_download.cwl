class: CommandLineTool
id: deepbgc_download.cwl
inputs:
- id: in_debug
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepbgc:0.1.23--py_0
cwlVersion: v1.1
baseCommand:
- deepbgc
- download
