class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mapview.cwl
inputs:
- id: x_one
  doc: Set the lower coordinate bound of the display
  type: string
  inputBinding:
    prefix: -x1
- id: x_two
  doc: Set the upper coordinate bound of the display
  type: string
  inputBinding:
    prefix: -x2
- id: ref_input_file
  doc: "|ref          If the input file is provided by 'mgaps', set the reference\
    \ sequence ID (as it appears in the first column of the UTR/CDS coords file)"
  type: boolean
  inputBinding:
    prefix: -g
- id: display_name_query
  doc: Display the name of query sequences
  type: boolean
  inputBinding:
    prefix: -I
- id: ir
  doc: Display the name of reference genes
  type: boolean
  inputBinding:
    prefix: -Ir
- id: coords_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: utr
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: var_7
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: cds
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: var_9
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- mapview
