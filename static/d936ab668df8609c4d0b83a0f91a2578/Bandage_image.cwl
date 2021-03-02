class: CommandLineTool
id: Bandage_image.cwl
inputs:
- id: in_height
  doc: 'Image height (default: 1000)'
  type: long?
  inputBinding:
    prefix: --height
- id: in_width
  doc: 'Image width (default: not set)'
  type: long?
  inputBinding:
    prefix: --width
- id: in_help_all
  doc: View all command line settings
  type: boolean?
  inputBinding:
    prefix: --helpall
- id: in_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Bandage
- image
