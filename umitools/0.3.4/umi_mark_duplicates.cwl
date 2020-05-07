class: CommandLineTool
id: umi_mark_duplicates.cwl
inputs:
- id: f
  doc: ''
  type: File
  inputBinding:
    prefix: -f
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: d
  doc: ''
  type: boolean
  inputBinding:
    prefix: -d
- id: c
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- umi_mark_duplicates
