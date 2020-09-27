class: CommandLineTool
id: genrestr.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File
  inputBinding:
    prefix: --config
- id: in_input_structure_path
  doc: "--input_ndx_path INPUT_NDX_PATH\n--output_itp_path OUTPUT_ITP_PATH\n"
  type: File
  inputBinding:
    prefix: --input_structure_path
- id: in_output_itp_path
  doc: ''
  type: File
  inputBinding:
    prefix: --output_itp_path
- id: in_input_ndx_path
  doc: ''
  type: string
  inputBinding:
    prefix: --input_ndx_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_itp_path
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_itp_path)
cwlVersion: v1.1
baseCommand:
- genrestr
