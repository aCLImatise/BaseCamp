class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dx_jobutil_add_output_CLASSNAME.cwl
inputs:
- id: class
  doc: '[CLASSNAME]  Class of output for formatting purposes, e.g. "int"; default
    "auto"'
  type: boolean
  inputBinding:
    prefix: --class
- id: array
  doc: Output field is an array
  type: boolean
  inputBinding:
    prefix: --array
- id: name
  doc: Name of the output field name
  type: string
  inputBinding:
    position: 0
- id: value
  doc: Value of the output field
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-jobutil-add-output
- CLASSNAME
