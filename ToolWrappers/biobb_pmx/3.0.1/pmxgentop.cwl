class: CommandLineTool
id: pmxgentop.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_top_zip_path
  doc: Path to the input topology zip file
  type: File?
  inputBinding:
    prefix: --input_top_zip_path
- id: in_output_top_zip_path
  doc: "Path to the output topology zip file\n"
  type: File?
  inputBinding:
    prefix: --output_top_zip_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_top_zip_path
  doc: "Path to the output topology zip file\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_top_zip_path)
hints: []
cwlVersion: v1.1
baseCommand:
- pmxgentop
