class: CommandLineTool
id: positionDB.cwl
inputs:
- id: this
  doc: a silly test and you shouldn't do it.
  type: string
  inputBinding:
    prefix: -- This
outputs: []
cwlVersion: v1.1
baseCommand:
- positionDB
