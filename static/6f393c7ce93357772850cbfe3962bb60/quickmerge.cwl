class: CommandLineTool
id: ../../../quickmerge.cwl
inputs:
- id: d
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: q
  doc: ''
  type: string
  inputBinding:
    prefix: -q
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
- id: hco
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hco
outputs: []
cwlVersion: v1.1
baseCommand:
- quickmerge
