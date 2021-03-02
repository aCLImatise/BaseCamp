class: CommandLineTool
id: nf_core_modules_list.cwl
inputs:
- id: in_repository_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- nf-core
- modules
- list
