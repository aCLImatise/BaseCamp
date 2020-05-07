class: CommandLineTool
id: dircolors.cwl
inputs:
- id: bourne_shell
  doc: Bourne shell code to set LS_COLORS
  type: string
  inputBinding:
    prefix: --bourne-shell
- id: c_shell
  doc: C shell code to set LS_COLORS
  type: string
  inputBinding:
    prefix: --c-shell
- id: print_database
  doc: defaults
  type: string
  inputBinding:
    prefix: --print-database
outputs: []
cwlVersion: v1.1
baseCommand:
- dircolors
