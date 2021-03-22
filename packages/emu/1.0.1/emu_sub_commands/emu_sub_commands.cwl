class: CommandLineTool
id: emu_sub_commands.cwl
inputs:
- id: in_emu
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
  dockerPull: quay.io/biocontainers/emu:1.0.1--0
cwlVersion: v1.1
baseCommand:
- emu
- sub-commands
