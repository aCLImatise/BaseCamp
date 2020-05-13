class: CommandLineTool
id: figtree.cwl
inputs:
- id: graphic
  doc: a graphic with the given format
  type: string
  inputBinding:
    prefix: -graphic
- id: width
  doc: width of the graphic in pixels
  type: string
  inputBinding:
    prefix: -width
- id: height
  doc: height of the graphic in pixels
  type: string
  inputBinding:
    prefix: -height
- id: url
  doc: input file is a URL
  type: string
  inputBinding:
    prefix: -url
outputs: []
cwlVersion: v1.1
baseCommand:
- figtree
