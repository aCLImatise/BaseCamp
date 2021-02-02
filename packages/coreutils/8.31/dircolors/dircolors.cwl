class: CommandLineTool
id: dircolors.cwl
inputs:
- id: in_bourne_shell
  doc: output Bourne shell code to set LS_COLORS
  type: boolean
  inputBinding:
    prefix: --bourne-shell
- id: in_c_shell
  doc: output C shell code to set LS_COLORS
  type: boolean
  inputBinding:
    prefix: --c-shell
- id: in_print_database
  doc: output defaults
  type: boolean
  inputBinding:
    prefix: --print-database
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dircolors
