class: CommandLineTool
id: ../../../oncogemini_amend.cwl
inputs:
- id: sample
  doc: New sample information file to load
  type: string
  inputBinding:
    prefix: --sample
- id: clear
  doc: Set all values in this column to NULL before loading.
  type: boolean
  inputBinding:
    prefix: --clear
- id: db
  doc: The name of the database to be amended.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- oncogemini
- amend
