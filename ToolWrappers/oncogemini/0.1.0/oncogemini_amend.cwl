class: CommandLineTool
id: oncogemini_amend.cwl
inputs:
- id: in_sample
  doc: New sample information file to load
  type: File
  inputBinding:
    prefix: --sample
- id: in_clear
  doc: Set all values in this column to NULL before loading.
  type: boolean
  inputBinding:
    prefix: --clear
- id: in_db
  doc: The name of the database to be amended.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- oncogemini
- amend
