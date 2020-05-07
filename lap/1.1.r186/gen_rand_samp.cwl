class: CommandLineTool
id: gen_rand_samp.py.cwl
inputs:
- id: samples
  doc: Number of samples
  type: boolean
  inputBinding:
    prefix: --samples
- id: output_dir
  doc: Base output directory.
  type: boolean
  inputBinding:
    prefix: --output_dir
- id: debug_level
  doc: determines how much debug output.
  type: boolean
  inputBinding:
    prefix: --debug_level
outputs: []
cwlVersion: v1.1
baseCommand:
- gen_rand_samp.py
