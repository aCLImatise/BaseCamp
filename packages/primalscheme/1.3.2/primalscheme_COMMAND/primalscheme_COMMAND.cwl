class: CommandLineTool
id: primalscheme_COMMAND.cwl
inputs:
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 0
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
- COMMAND
