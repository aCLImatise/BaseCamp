class: CommandLineTool
id: ../../../verse.cwl
inputs:
- id: output_version_program
  doc: Output version of the program.
  type: boolean
  inputBinding:
    prefix: -v
- id: show_details_running
  doc: Show details about the running mode or scheme.
  type: boolean
  inputBinding:
    prefix: -Z
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- verse
