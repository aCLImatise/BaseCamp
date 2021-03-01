class: CommandLineTool
id: renumber_structure.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_structure_path
  doc: Input structure file name
  type: File?
  inputBinding:
    prefix: --input_structure_path
- id: in_output_structure_path
  doc: Output structure file name
  type: File?
  inputBinding:
    prefix: --output_structure_path
- id: in_output_mapping_json_path
  doc: "Output mapping json file name\n"
  type: File?
  inputBinding:
    prefix: --output_mapping_json_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_structure_path
  doc: Output structure file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output_structure_path)
- id: out_output_mapping_json_path
  doc: "Output mapping json file name\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_mapping_json_path)
hints: []
cwlVersion: v1.1
baseCommand:
- renumber_structure
