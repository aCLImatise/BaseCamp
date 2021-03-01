class: CommandLineTool
id: medpy_morphology.py.cwl
inputs:
- id: in_type
  doc: The type of the morphological operation.
  type: string?
  inputBinding:
    prefix: --type
- id: in_iterations
  doc: "The number of iteration to execute. Supply a value of\n1 or higher to restrict\
    \ the effect of the\nmorphological operation. Otherwise it is applied until\n\
    saturation."
  type: long?
  inputBinding:
    prefix: --iterations
- id: in_size
  doc: "Size of the closing element (>=1). The higher this\nvalue, the bigger the\
    \ wholes that get closed (closing)\nresp. unconnected elements that are removed\
    \ (opening).\nIn the 3D case, 1 equals a 6-connectedness, 2 a\n12-connectedness,\
    \ 3 a 18-connectedness, etc."
  type: long?
  inputBinding:
    prefix: --size
- id: in_display_more_information
  doc: Display more information.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_display_debug_information
  doc: Display debug information.
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_silently_override_images
  doc: Silently override existing output images.
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_input
  doc: Source volume.
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Target volume.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- medpy_morphology.py
