class: CommandLineTool
id: medpy_morphology.py.cwl
inputs:
- id: input
  doc: Source volume.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Target volume.
  type: string
  inputBinding:
    position: 1
- id: type
  doc: The type of the morphological operation.
  type: string
  inputBinding:
    prefix: --type
- id: iterations
  doc: The number of iteration to execute. Supply a value of 1 or higher to restrict
    the effect of the morphological operation. Otherwise it is applied until saturation.
  type: string
  inputBinding:
    prefix: --iterations
- id: size
  doc: Size of the closing element (>=1). The higher this value, the bigger the wholes
    that get closed (closing) resp. unconnected elements that are removed (opening).
    In the 3D case, 1 equals a 6-connectedness, 2 a 12-connectedness, 3 a 18-connectedness,
    etc.
  type: long
  inputBinding:
    prefix: --size
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
- id: f
  doc: Silently override existing output images.
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_morphology.py
