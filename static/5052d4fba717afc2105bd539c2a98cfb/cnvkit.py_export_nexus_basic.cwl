class: CommandLineTool
id: cnvkit.py_export_nexus_basic.cwl
inputs:
- id: in_output
  doc: "Output file name.\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_filename
  doc: "Log2 copy ratio data file (*.cnr), the output of the\n'fix' sub-command."
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file name.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- export
- nexus-basic
