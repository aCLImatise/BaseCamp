class: CommandLineTool
id: qcli_make_rst.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_fps
  doc: the input file(s) to generate rst files for [REQUIRED]
  type: File
  inputBinding:
    prefix: --input_fps
- id: in_output_dir
  doc: "the directory where the resulting rst file(s) should\nbe written [REQUIRED]\n"
  type: File
  inputBinding:
    prefix: --output_dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- qcli_make_rst
