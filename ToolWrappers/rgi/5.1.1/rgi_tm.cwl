class: CommandLineTool
id: rgi_tm.cwl
inputs:
- id: in_clean
  doc: removes temporary files
  type: boolean?
  inputBinding:
    prefix: --clean
- id: in_debug
  doc: debug mode
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_o
  doc: ''
  type: File?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
- id: in_input_file
  doc: -o OUTPUT_FILE, --output_file OUTPUT_FILE
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: ''
  type: File?
  outputBinding:
    glob: $(inputs.in_o)
hints: []
cwlVersion: v1.1
baseCommand:
- rgi
- tm
