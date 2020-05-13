class: CommandLineTool
id: fuma_list_to_boolean_list.cwl
inputs:
- id: input_file
  doc: FuMa List output
  type: string
  inputBinding:
    position: 0
- id: output
  doc: output filename; '-' for stdout
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- fuma-list-to-boolean-list
