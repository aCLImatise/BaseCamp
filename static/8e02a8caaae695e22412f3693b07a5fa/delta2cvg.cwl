class: CommandLineTool
id: delta2cvg.cwl
inputs:
- id: m
  doc: '- Min coverage to display'
  type: string
  inputBinding:
    prefix: -m
- id: m
  doc: '- Max coverage to display'
  type: string
  inputBinding:
    prefix: -M
- id: merge
  doc: '- Merge coverage intervals '
  type: boolean
  inputBinding:
    prefix: -merge
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
- delta2cvg
