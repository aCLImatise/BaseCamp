class: CommandLineTool
id: print_picrust_config.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for debugging\n[default: False]\n"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_print_pic_rust_config_do_tpy
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- print_picrust_config.py
