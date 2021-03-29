class: CommandLineTool
id: coolbox_load_module.cwl
inputs:
- id: in_mod_str
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coolbox:0.3.6--py_0
cwlVersion: v1.1
baseCommand:
- coolbox
- load_module
