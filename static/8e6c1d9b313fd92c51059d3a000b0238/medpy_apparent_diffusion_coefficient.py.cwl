class: CommandLineTool
id: medpy_apparent_diffusion_coefficient.py.cwl
inputs:
- id: in_threshold
  doc: "set a fixed threshold for the input images to mask the\ncomputation"
  type: string
  inputBinding:
    prefix: --threshold
- id: in_verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_display_debug_information
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
- id: in_force
  doc: overwrite existing files
  type: boolean
  inputBinding:
    prefix: --force
- id: in_bzero_image
  doc: the diffusion weighted image required with b=0
  type: long
  inputBinding:
    position: 0
- id: in_bx_image
  doc: the diffusion weighted image required with b=x
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: the computed apparent diffusion coefficient image
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medpy_apparent_diffusion_coefficient.py
