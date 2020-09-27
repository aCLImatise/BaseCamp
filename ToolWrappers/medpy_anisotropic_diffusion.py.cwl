class: CommandLineTool
id: medpy_anisotropic_diffusion.py.cwl
inputs:
- id: in_iterations
  doc: The number of smoothing iterations. Strong parameter.
  type: long
  inputBinding:
    prefix: --iterations
- id: in_kappa
  doc: "The algorithms kappa parameter. The higher the more\nedges are smoothed over."
  type: string
  inputBinding:
    prefix: --kappa
- id: in_gamma
  doc: "The algorithms gamma parameter. The higher, the\nstronger the plateaus between\
    \ edges are smeared."
  type: string
  inputBinding:
    prefix: --gamma
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
- id: in_silently_override_images
  doc: Silently override existing output images.
  type: boolean
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
cwlVersion: v1.1
baseCommand:
- medpy_anisotropic_diffusion.py
