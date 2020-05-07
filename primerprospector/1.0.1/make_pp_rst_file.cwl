class: CommandLineTool
id: make_pp_rst_file.py.cwl
inputs:
- id: input_script
  doc: This is the input script for which to  make a .rst file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_script
- id: output_dir
  doc: output directory for .rst files [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- make_pp_rst_file.py
