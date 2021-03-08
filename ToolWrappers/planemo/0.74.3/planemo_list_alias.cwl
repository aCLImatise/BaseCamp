class: CommandLineTool
id: planemo_list_alias.cwl
inputs:
- id: in_profile
  doc: "Name of profile (created with the profile_create command) to\nuse with this\
    \ command.  [required]"
  type: string?
  inputBinding:
    prefix: --profile
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
- list_alias
