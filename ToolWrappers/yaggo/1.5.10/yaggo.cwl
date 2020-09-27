class: CommandLineTool
id: yaggo.cwl
inputs:
- id: in_output
  doc: Output file
  type: File
  inputBinding:
    prefix: --output
- id: in_license
  doc: License file to copy in header
  type: File
  inputBinding:
    prefix: --license
- id: in_man
  doc: '[FILE]                 Display or write manpage'
  type: boolean
  inputBinding:
    prefix: --man
- id: in_stub
  doc: Output a stub yaggo file
  type: File
  inputBinding:
    prefix: --stub
- id: in_zc
  doc: Write zsh completion file
  type: File
  inputBinding:
    prefix: --zc
- id: in_extended_syntax
  doc: Use extended syntax
  type: boolean
  inputBinding:
    prefix: --extended-syntax
- id: in_debug
  doc: Debug yaggo
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_stub
  doc: Output a stub yaggo file
  type: File
  outputBinding:
    glob: $(inputs.in_stub)
cwlVersion: v1.1
baseCommand:
- yaggo
