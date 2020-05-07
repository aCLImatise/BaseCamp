class: CommandLineTool
id: medpy_grid.py.cwl
inputs:
- id: output
  doc: Generated grid volume.
  type: string
  inputBinding:
    position: 0
- id: spacing
  doc: The grid spacing. Can be a single digit for regular spacing in all dimensions
    or a colon-separated list of N integers, where N is the number of dimension in
    the generated volume. To skip the grid in one dimension, simply supply a 0 for
    it.
  type: string
  inputBinding:
    position: 1
- id: example
  doc: 'Option 1/2: Supply an image to create the grid volume by example (i.e. with
    same shape, voxel spacing and offset).'
  type: string
  inputBinding:
    prefix: --example
- id: shape
  doc: 'Option 2/2: Supply a colon-separated list of integers that constitute the
    target volumes shape.'
  type: string
  inputBinding:
    prefix: --shape
- id: pixel_spacing
  doc: Set the pixel spacing of the target volume by supplying a colon-separated list
    of N numbers, where N is the number of dimension in the generated volume.
  type: string
  inputBinding:
    prefix: --pixel-spacing
- id: offset
  doc: Set offset of the target volume by supplying a colon- separated list of N numbers,
    where N is the number of dimension in the generated volume.
  type: string
  inputBinding:
    prefix: --offset
- id: real
  doc: Spacing is given in real world coordinates, rather than voxels. For this to
    make a difference, either the -e switch or the -p switch must be set.
  type: boolean
  inputBinding:
    prefix: --real
- id: v
  doc: Display more information.
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
- id: force
  doc: Silently override existing output images.
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_grid.py
