class: CommandLineTool
id: yaggo.cwl
inputs:
- id: output
  doc: Output file
  type: File
  inputBinding:
    prefix: --output
- id: license
  doc: License file to copy in header
  type: File
  inputBinding:
    prefix: --license
- id: man
  doc: '[FILE]                 Display or write manpage'
  type: boolean
  inputBinding:
    prefix: --man
- id: stub
  doc: Output a stub yaggo file
  type: boolean
  inputBinding:
    prefix: --stub
- id: zc
  doc: Write zsh completion file
  type: File
  inputBinding:
    prefix: --zc
- id: extended_syntax
  doc: Use extended syntax
  type: boolean
  inputBinding:
    prefix: --extended-syntax
- id: debug
  doc: Debug yaggo
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- yaggo
