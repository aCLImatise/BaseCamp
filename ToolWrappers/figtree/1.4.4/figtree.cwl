class: CommandLineTool
id: figtree.cwl
inputs:
- id: in_graphic
  doc: a graphic with the given format
  type: string
  inputBinding:
    prefix: -graphic
- id: in_width
  doc: width of the graphic in pixels
  type: string
  inputBinding:
    prefix: -width
- id: in_height
  doc: height of the graphic in pixels
  type: string
  inputBinding:
    prefix: -height
- id: in_url
  doc: input file is a URL
  type: File
  inputBinding:
    prefix: -url
- id: in_tree_file_name
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_graphic_file_name
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- figtree
