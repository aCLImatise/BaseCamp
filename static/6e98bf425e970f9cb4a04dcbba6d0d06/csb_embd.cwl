class: CommandLineTool
id: csb_embd.cwl
inputs:
- id: map_file
  doc: Input Cryo EM file in CCP4 MRC format
  type: string
  inputBinding:
    position: 0
- id: psf_size
  doc: size of the point spread function (default=15)
  type: string
  inputBinding:
    prefix: --psf-size
- id: output
  doc: output directory of the sharpened maps (default=.)
  type: string
  inputBinding:
    prefix: --output
- id: iterations
  doc: number of iterations (default=1000)
  type: string
  inputBinding:
    prefix: --iterations
- id: output_frequency
  doc: create a map file each f iterations (default=50)
  type: string
  inputBinding:
    prefix: --output-frequency
- id: verbose
  doc: verbose mode (default=False)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- csb-embd
