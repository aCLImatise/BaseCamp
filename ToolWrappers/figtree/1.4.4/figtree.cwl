class: CommandLineTool
id: figtree.cwl
inputs:
- id: in_graphic
  doc: a graphic with the given format
  type: string?
  inputBinding:
    prefix: -graphic
- id: in_width
  doc: width of the graphic in pixels
  type: string?
  inputBinding:
    prefix: -width
- id: in_height
  doc: height of the graphic in pixels
  type: string?
  inputBinding:
    prefix: -height
- id: in_url
  doc: input file is a URL
  type: File?
  inputBinding:
    prefix: -url
- id: in_a_dotrambautateddotacdotuk
  doc: http://tree.bio.ed.ac.uk/
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- figtree
