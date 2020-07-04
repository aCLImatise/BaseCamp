class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bl_exclude.cwl
inputs:
- id: line_excludefile_truncated
  doc: each line in EXCLUDE_FILE is truncated by a space or tab and stored as an id
    to exclude
  type: boolean
  inputBinding:
    prefix: -x
- id: invert_exclude_file
  doc: invert exclude file to keep entries
  type: boolean
  inputBinding:
    prefix: -k
- id: specify_multiple_input_files
  doc: specify multiple INPUT files
  type: boolean
  inputBinding:
    prefix: -i
- id: specify_multiple_output_files
  doc: specify multiple OUTPUT files
  type: boolean
  inputBinding:
    prefix: -o
- id: exclude
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bl-exclude
