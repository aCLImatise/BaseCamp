class: CommandLineTool
id: extractScaffold.cwl
inputs:
- id: the
  doc: 'to be operated on. '
  type: string
  inputBinding:
    prefix: '- The'
- id: the
  doc: of the scaffold the be extracted .
  type: string
  inputBinding:
    prefix: '- The'
- id: the
  doc: of the new bank consisting of the.
  type: string
  inputBinding:
    prefix: '- The'
- id: list
  doc: 'scaffolds in the given bank to stdout. The order is '
  type: string
  inputBinding:
    prefix: '- list'
- id: the
  doc: 'to be operated on. '
  type: string
  inputBinding:
    prefix: '- The'
- id: the
  doc: of the scaffold the be extracted .
  type: string
  inputBinding:
    prefix: '- The'
- id: the
  doc: of the new bank consisting of the.
  type: string
  inputBinding:
    prefix: '- The'
- id: list
  doc: 'scaffolds in the given bank to stdout. The order is '
  type: string
  inputBinding:
    prefix: '- list'
outputs: []
cwlVersion: v1.1
baseCommand:
- extractScaffold
