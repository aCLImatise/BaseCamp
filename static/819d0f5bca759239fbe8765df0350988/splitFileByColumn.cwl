class: CommandLineTool
id: splitFileByColumn.cwl
inputs:
- id: source
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outdir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: tab
  doc: '- Split by tab characters instead of whitespace.'
  type: boolean
  inputBinding:
    prefix: -tab
outputs: []
cwlVersion: v1.1
baseCommand:
- splitFileByColumn
