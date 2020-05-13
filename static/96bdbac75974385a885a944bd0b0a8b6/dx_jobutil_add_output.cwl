class: CommandLineTool
id: dx_jobutil_add_output.cwl
inputs:
- id: classname
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: name
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: value
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: class
  doc: ''
  type: boolean
  inputBinding:
    prefix: --class
- id: array
  doc: ''
  type: boolean
  inputBinding:
    prefix: --array
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-jobutil-add-output
