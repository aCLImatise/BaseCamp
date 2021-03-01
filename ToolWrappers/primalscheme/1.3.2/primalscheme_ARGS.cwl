class: CommandLineTool
id: primalscheme_ARGS.cwl
inputs:
- id: in_primal_scheme
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/primalscheme:1.3.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- primalscheme
- ARGS
