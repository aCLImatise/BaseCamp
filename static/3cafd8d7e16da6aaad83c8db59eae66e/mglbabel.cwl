class: CommandLineTool
id: mglbabel.cwl
inputs:
- id: babel
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_type
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output_type
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- mglbabel
