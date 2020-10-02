class: CommandLineTool
id: medpy_grid.py.cwl
inputs:
- id: in_example
  doc: "Option 1/2: Supply an image to create the grid volume\nby example (i.e. with\
    \ same shape, voxel spacing and\noffset)."
  type: long
  inputBinding:
    prefix: --example
- id: in_shape
  doc: "Option 2/2: Supply a colon-separated list of integers\nthat constitute the\
    \ target volumes shape."
  type: long
  inputBinding:
    prefix: --shape
- id: in_pixel_spacing
  doc: "Set the pixel spacing of the target volume by\nsupplying a colon-separated\
    \ list of N numbers, where N\nis the number of dimension in the generated volume."
  type: long
  inputBinding:
    prefix: --pixel-spacing
- id: in_offset
  doc: "Set offset of the target volume by supplying a colon-\nseparated list of N\
    \ numbers, where N is the number of\ndimension in the generated volume."
  type: long
  inputBinding:
    prefix: --offset
- id: in_real
  doc: "Spacing is given in real world coordinates, rather\nthan voxels. For this\
    \ to make a difference, either the\n-e switch or the -p switch must be set."
  type: boolean
  inputBinding:
    prefix: --real
- id: in_display_more_information
  doc: Display more information.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_display_debug_information
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
- id: in_force
  doc: Silently override existing output images.
  type: boolean
  inputBinding:
    prefix: --force
- id: in_output
  doc: Generated grid volume.
  type: string
  inputBinding:
    position: 0
- id: in_spacing
  doc: "The grid spacing. Can be a single digit for regular\nspacing in all dimensions\
    \ or a colon-separated list of\nN integers, where N is the number of dimension\
    \ in the\ngenerated volume. To skip the grid in one dimension,\nsimply supply\
    \ a 0 for it."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medpy_grid.py
