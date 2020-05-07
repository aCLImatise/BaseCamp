class: CommandLineTool
id: bl_exclude.cwl
inputs:
- id: x
  doc: each line in EXCLUDE_FILE is truncated by a space or tab and stored as an id
    to exclude
  type: boolean
  inputBinding:
    prefix: -x
- id: k
  doc: invert exclude file to keep entries
  type: boolean
  inputBinding:
    prefix: -k
- id: i
  doc: specify multiple INPUT files
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: specify multiple OUTPUT files
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-exclude
