class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fuma_list_to_boolean_list.cwl
inputs:
- id: output
  doc: output filename; '-' for stdout
  type: string
  inputBinding:
    prefix: --output
- id: t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: input_file
  doc: FuMa List output
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fuma-list-to-boolean-list
