class: CommandLineTool
id: medpy_apparent_diffusion_coefficient.py.cwl
inputs:
- id: b0_image
  doc: the diffusion weighted image required with b=0
  type: string
  inputBinding:
    position: 0
- id: bx_image
  doc: the diffusion weighted image required with b=x
  type: string
  inputBinding:
    position: 1
- id: b
  doc: the b-value used to acquire the bx-image (i.e. x)
  type: string
  inputBinding:
    position: 2
- id: output
  doc: the computed apparent diffusion coefficient image
  type: string
  inputBinding:
    position: 3
- id: threshold
  doc: set a fixed threshold for the input images to mask the computation
  type: string
  inputBinding:
    prefix: --threshold
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: d
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
- id: force
  doc: overwrite existing files
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_apparent_diffusion_coefficient.py
