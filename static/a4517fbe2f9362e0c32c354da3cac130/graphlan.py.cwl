class: CommandLineTool
id: graphlan.py.cwl
inputs:
- id: in_format
  doc: "['output_image_format']\nset the format of the output image (default none\n\
    meaning that the format is guessed from the output\nfile extension)"
  type: File?
  inputBinding:
    prefix: --format
- id: in_warnings
  doc: "set whether warning messages should be reported or not\n(default 1)"
  type: long?
  inputBinding:
    prefix: --warnings
- id: in_positions
  doc: "set whether the absolute position of the points should\nbe reported on the\
    \ standard output. The two\ncohordinates are r and theta"
  type: string?
  inputBinding:
    prefix: --positions
- id: in_dpi
  doc: the dpi of the output image for non vectorial formats
  type: string?
  inputBinding:
    prefix: --dpi
- id: in_size
  doc: the size of the output image (in inches, default 7.0)
  type: long?
  inputBinding:
    prefix: --size
- id: in_pad
  doc: "the distance between the most external graphical\nelement and the border of\
    \ the image"
  type: string?
  inputBinding:
    prefix: --pad
- id: in_external_legends
  doc: "specify whether the two external legends should be put\nin separate file or\
    \ keep them along with the image\n(default behavior)"
  type: boolean?
  inputBinding:
    prefix: --external_legends
- id: in_avoid_reordering
  doc: "specify whether the tree will be reorder or not\n(default the tree will be\
    \ reordered)"
  type: boolean?
  inputBinding:
    prefix: --avoid_reordering
- id: in_input_tree
  doc: the input tree in PhyloXML format
  type: string
  inputBinding:
    position: 0
- id: in_output_image
  doc: "the output image, the format is guessed from the\nextension unless --format\
    \ is given. Available file\nformats are: png, pdf, ps, eps, svg"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_format
  doc: "['output_image_format']\nset the format of the output image (default none\n\
    meaning that the format is guessed from the output\nfile extension)"
  type: File?
  outputBinding:
    glob: $(inputs.in_format)
hints: []
cwlVersion: v1.1
baseCommand:
- graphlan.py
