class: CommandLineTool
id: gdk_pixbuf_csource.cwl
inputs:
- id: stream
  doc: generate pixbuf data stream
  type: boolean
  inputBinding:
    prefix: --stream
- id: struct
  doc: generate GdkPixdata structure
  type: boolean
  inputBinding:
    prefix: --struct
- id: macros
  doc: generate image size/pixel macros
  type: boolean
  inputBinding:
    prefix: --macros
- id: rle
  doc: use one byte run-length-encoding
  type: boolean
  inputBinding:
    prefix: --rle
- id: raw
  doc: provide raw image data copy
  type: boolean
  inputBinding:
    prefix: --raw
- id: extern
  doc: generate extern symbols
  type: boolean
  inputBinding:
    prefix: --extern
- id: static
  doc: generate static symbols
  type: boolean
  inputBinding:
    prefix: --static
- id: decoder
  doc: provide rle decoder
  type: boolean
  inputBinding:
    prefix: --decoder
- id: name
  doc: C macro/variable name
  type: string
  inputBinding:
    prefix: --name
- id: build_list
  doc: parse (name, image) pairs
  type: boolean
  inputBinding:
    prefix: --build-list
- id: g_fatal_warnings
  doc: make warnings fatal (abort)
  type: boolean
  inputBinding:
    prefix: --g-fatal-warnings
outputs: []
cwlVersion: v1.1
baseCommand:
- gdk-pixbuf-csource
