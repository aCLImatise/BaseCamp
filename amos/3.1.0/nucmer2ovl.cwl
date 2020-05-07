class: CommandLineTool
id: nucmer2ovl.cwl
inputs:
- id: tab
  doc: '- Output format (Default: AMOS)'
  type: boolean
  inputBinding:
    prefix: -tab
- id: ignore
  doc: '- Maximum length of the end sequence unaligned (Default: 20 bp)'
  type: string
  inputBinding:
    prefix: -ignore
- id: v
  doc: '|version      - Print the version and exit;'
  type: boolean
  inputBinding:
    prefix: -V
- id: depend
  doc: '- Print the program and database dependency list;'
  type: boolean
  inputBinding:
    prefix: -depend
- id: debug
  doc: 'debug <level> (0, non-debug by default); '
  type: string
  inputBinding:
    prefix: -debug
outputs: []
cwlVersion: v1.1
baseCommand:
- nucmer2ovl
