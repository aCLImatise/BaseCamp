class: CommandLineTool
id: medpy_stack_sub_volumes.py.cwl
inputs:
- id: dimension
  doc: The dimension in which direction to stack (starting from 0:x).
  type: string
  inputBinding:
    position: 0
- id: output
  doc: The output image.
  type: string
  inputBinding:
    position: 1
- id: images
  doc: The images to concatenate/stack.
  type: string
  inputBinding:
    position: 2
- id: f
  doc: Set this flag to silently override files that exist.
  type: boolean
  inputBinding:
    prefix: -f
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
- id: z
  doc: If supplied, all images containing only 1s are treated as empty image.
  type: boolean
  inputBinding:
    prefix: -z
- id: r
  doc: Stack in resversed order as how the files are supplied.
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_stack_sub_volumes.py
