class: CommandLineTool
id: treebest_export.cwl
inputs:
- id: in_width
  doc: width [640]
  type: long
  inputBinding:
    prefix: -x
- id: in_height
  doc: height [480]
  type: long
  inputBinding:
    prefix: -y
- id: in_margin
  doc: margin [20]
  type: long
  inputBinding:
    prefix: -m
- id: in_font_size
  doc: font size [11]
  type: long
  inputBinding:
    prefix: -f
- id: in_box_size
  doc: box size [4.0]
  type: long
  inputBinding:
    prefix: -b
- id: in_font_width
  doc: font width [font_size/2]
  type: long
  inputBinding:
    prefix: -w
- id: in_species_tree
  doc: species tree
  type: File
  inputBinding:
    prefix: -s
- id: in_suppress_bootstrap_value
  doc: suppress bootstrap value
  type: boolean
  inputBinding:
    prefix: -B
- id: in_blackwhite_mode
  doc: black/white mode
  type: boolean
  inputBinding:
    prefix: -M
- id: in_show_species_name
  doc: show species name
  type: boolean
  inputBinding:
    prefix: -S
- id: in_speciationduplication_inference
  doc: speciation/duplication inference
  type: boolean
  inputBinding:
    prefix: -d
- id: in_pseudolength
  doc: pseudo-length
  type: boolean
  inputBinding:
    prefix: -p
- id: in_tree
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- treebest
- export
