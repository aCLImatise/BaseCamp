class: CommandLineTool
id: 2ft.cwl
inputs:
- id: r
  doc: ': translate only reverse (antisense) strand.'
  type: boolean
  inputBinding:
    prefix: -r
- id: s
  doc: ': translate only sense strand.'
  type: boolean
  inputBinding:
    prefix: -s
- id: w
  doc: '<value>: specifies the output width (default: 60).'
  type: boolean
  inputBinding:
    prefix: -W
outputs: []
cwlVersion: v1.1
baseCommand:
- 2ft
