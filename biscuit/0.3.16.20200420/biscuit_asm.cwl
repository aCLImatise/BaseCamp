class: CommandLineTool
id: ../../../biscuit_asm.cwl
inputs:
- id: input_dot_epi_read
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- biscuit
- asm
