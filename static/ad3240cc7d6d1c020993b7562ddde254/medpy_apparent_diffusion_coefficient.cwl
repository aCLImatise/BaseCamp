class: CommandLineTool
id: ../../../medpy_apparent_diffusion_coefficient.py.cwl
inputs:
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
- id: display_debug_information
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
- id: force
  doc: overwrite existing files
  type: boolean
  inputBinding:
    prefix: --force
- id: bzero_image
  doc: the diffusion weighted image required with b=0
  type: string
  inputBinding:
    position: 0
- id: bx_image
  doc: the diffusion weighted image required with b=x
  type: string
  inputBinding:
    position: 1
- id: bvalue_used_acquire
  doc: the b-value used to acquire the bx-image (i.e. x)
  type: string
  inputBinding:
    position: 2
- id: output
  doc: the computed apparent diffusion coefficient image
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_apparent_diffusion_coefficient.py
