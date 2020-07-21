class: CommandLineTool
id: ../../../medpy_anisotropic_diffusion.py.cwl
inputs:
- id: iterations
  doc: The number of smoothing iterations. Strong parameter.
  type: string
  inputBinding:
    prefix: --iterations
- id: kappa
  doc: The algorithms kappa parameter. The higher the more edges are smoothed over.
  type: string
  inputBinding:
    prefix: --kappa
- id: gamma
  doc: The algorithms gamma parameter. The higher, the stronger the plateaus between
    edges are smeared.
  type: string
  inputBinding:
    prefix: --gamma
- id: display_more_information
  doc: Display more information.
  type: boolean
  inputBinding:
    prefix: -v
- id: display_debug_information
  doc: Display debug information.
  type: boolean
  inputBinding:
    prefix: -d
- id: silently_override_images
  doc: Silently override existing output images.
  type: boolean
  inputBinding:
    prefix: -f
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
outputs: []
cwlVersion: v1.1
baseCommand:
- medpy_anisotropic_diffusion.py
