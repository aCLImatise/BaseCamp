class: CommandLineTool
id: genomepy_plugin.cwl
inputs:
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_name
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/genomepy:0.9.3--py_0
cwlVersion: v1.1
baseCommand:
- genomepy
- plugin
