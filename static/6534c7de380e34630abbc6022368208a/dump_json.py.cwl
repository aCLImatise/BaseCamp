class: CommandLineTool
id: dump_json.py.cwl
inputs:
- id: in_out_file
  doc: 'Output JSON file to this file location (default: None)'
  type: File?
  inputBinding:
    prefix: --out_file
- id: in_no_params
  doc: "Output parameters as well as model structure (Default:\n--params) (default:\
    \ True)\n"
  type: boolean?
  inputBinding:
    prefix: --no-params
- id: in_model
  doc: Model file to read from
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: 'Output JSON file to this file location (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints: []
cwlVersion: v1.1
baseCommand:
- dump_json.py
