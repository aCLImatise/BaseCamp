class: CommandLineTool
id: make_pp_rst_file.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input_script
  doc: "This is the input script for which to  make a .rst\nfile [REQUIRED]"
  type: File?
  inputBinding:
    prefix: --input_script
- id: in_output_dir
  doc: "output directory for .rst files [REQUIRED]\n"
  type: Directory?
  inputBinding:
    prefix: --output_dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "output directory for .rst files [REQUIRED]\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- make_pp_rst_file.py
