class: CommandLineTool
id: mapview_coords.cwl
inputs:
- id: x1
  doc: Set the lower coordinate bound of the display
  type: string
  inputBinding:
    prefix: -x1
- id: x2
  doc: Set the upper coordinate bound of the display
  type: string
  inputBinding:
    prefix: -x2
- id: g
  doc: "|ref          If the input file is provided by 'mgaps', set the reference\
    \ sequence ID (as it appears in the first column of the UTR/CDS coords file)"
  type: boolean
  inputBinding:
    prefix: -g
- id: i
  doc: Display the name of query sequences
  type: boolean
  inputBinding:
    prefix: -I
- id: ir
  doc: Display the name of reference genes
  type: boolean
  inputBinding:
    prefix: -Ir
outputs: []
cwlVersion: v1.1
baseCommand:
- mapview
- coords
