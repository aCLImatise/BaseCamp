class: CommandLineTool
id: design_printgraphml.py.cwl
inputs:
- id: graph_ml
  doc: Read graphml file with the given filename.
  type: string
  inputBinding:
    prefix: --graphml
- id: input
  doc: Read custom structures and sequence constraints from stdin
  type: boolean
  inputBinding:
    prefix: --input
- id: layout
  doc: 'Specify the plotting layout: components - vertice in connected components
    will be close to each other; circle: vertices will be drawn on a circle'
  type: string
  inputBinding:
    prefix: --layout
- id: file
  doc: Read file in *.inp format
  type: File
  inputBinding:
    prefix: --file
- id: output
  doc: Write graph to PNG file with the given filename.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- design-printgraphml.py
