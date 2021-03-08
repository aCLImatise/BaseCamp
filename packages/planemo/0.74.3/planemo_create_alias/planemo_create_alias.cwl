class: CommandLineTool
id: planemo_create_alias.cwl
inputs:
- id: in_alias
  doc: Name of an alias.
  type: string?
  inputBinding:
    prefix: --alias
- id: in_profile
  doc: "Name of profile (created with the profile_create command) to\nuse with this\
    \ command.  [required]"
  type: string?
  inputBinding:
    prefix: --profile
- id: in_obj
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
  dockerPull: quay.io/biocontainers/planemo:0.74.3--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- create_alias
