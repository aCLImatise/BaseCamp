class: CommandLineTool
id: csb_embd.cwl
inputs:
- id: in_psf_size
  doc: size of the point spread function (default=15)
  type: long?
  inputBinding:
    prefix: --psf-size
- id: in_output
  doc: output directory of the sharpened maps (default=.)
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_iterations
  doc: number of iterations (default=1000)
  type: long?
  inputBinding:
    prefix: --iterations
- id: in_output_frequency
  doc: create a map file each f iterations (default=50)
  type: File?
  inputBinding:
    prefix: --output-frequency
- id: in_verbose
  doc: verbose mode (default=False)
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output directory of the sharpened maps (default=.)
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- csb-embd
