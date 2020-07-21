class: CommandLineTool
id: ../../../treebest_export.cwl
inputs:
- id: width
  doc: width [640]
  type: string
  inputBinding:
    prefix: -x
- id: height
  doc: height [480]
  type: string
  inputBinding:
    prefix: -y
- id: margin
  doc: margin [20]
  type: string
  inputBinding:
    prefix: -m
- id: font_size
  doc: font size [11]
  type: string
  inputBinding:
    prefix: -f
- id: box_size
  doc: box size [4.0]
  type: string
  inputBinding:
    prefix: -b
- id: font_width
  doc: font width [font_size/2]
  type: string
  inputBinding:
    prefix: -w
- id: species_tree
  doc: species tree
  type: File
  inputBinding:
    prefix: -s
- id: suppress_bootstrap_value
  doc: suppress bootstrap value
  type: boolean
  inputBinding:
    prefix: -B
- id: blackwhite_mode
  doc: black/white mode
  type: boolean
  inputBinding:
    prefix: -M
- id: show_species_name
  doc: show species name
  type: boolean
  inputBinding:
    prefix: -S
- id: speciationduplication_inference
  doc: speciation/duplication inference
  type: boolean
  inputBinding:
    prefix: -d
- id: pseudolength
  doc: pseudo-length
  type: boolean
  inputBinding:
    prefix: -p
- id: tree
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- treebest
- export
