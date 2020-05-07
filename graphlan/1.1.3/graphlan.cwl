class: CommandLineTool
id: graphlan.py.cwl
inputs:
- id: input_tree
  doc: the input tree in PhyloXML format
  type: string
  inputBinding:
    position: 0
- id: output_image
  doc: 'the output image, the format is guessed from the extension unless --format
    is given. Available file formats are: png, pdf, ps, eps, svg'
  type: string
  inputBinding:
    position: 1
- id: format
  doc: "['output_image_format'] set the format of the output image (default none meaning\
    \ that the format is guessed from the output file extension)"
  type: boolean
  inputBinding:
    prefix: --format
- id: warnings
  doc: set whether warning messages should be reported or not (default 1)
  type: string
  inputBinding:
    prefix: --warnings
- id: positions
  doc: set whether the absolute position of the points should be reported on the standard
    output. The two cohordinates are r and theta
  type: string
  inputBinding:
    prefix: --positions
- id: dpi
  doc: the dpi of the output image for non vectorial formats
  type: string
  inputBinding:
    prefix: --dpi
- id: size
  doc: the size of the output image (in inches, default 7.0)
  type: string
  inputBinding:
    prefix: --size
- id: pad
  doc: the distance between the most external graphical element and the border of
    the image
  type: string
  inputBinding:
    prefix: --pad
- id: external_legends
  doc: specify whether the two external legends should be put in separate file or
    keep them along with the image (default behavior)
  type: boolean
  inputBinding:
    prefix: --external_legends
- id: avoid_reordering
  doc: specify whether the tree will be reorder or not (default the tree will be reordered)
  type: boolean
  inputBinding:
    prefix: --avoid_reordering
outputs: []
cwlVersion: v1.1
baseCommand:
- graphlan.py
