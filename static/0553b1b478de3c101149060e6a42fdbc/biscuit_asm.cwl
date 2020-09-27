class: CommandLineTool
id: biscuit_asm.cwl
inputs:
- id: in_input_dot_epi_read
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- biscuit
- asm
