class: CommandLineTool
id: stats.cwl
inputs:
- id: number
  doc: BP aligned in each assembly
  type: string
  inputBinding:
    prefix: '- Number'
- id: p
  doc: 'Prefix for output stats files [default: stats]'
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- stats
