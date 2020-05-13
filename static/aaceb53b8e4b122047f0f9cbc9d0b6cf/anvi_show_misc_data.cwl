class: CommandLineTool
id: anvi_show_misc_data.cwl
inputs:
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-show-misc-data
