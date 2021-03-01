class: CommandLineTool
id: pmxmutate.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_b_structure_path
  doc: Path to the mutated input structure file
  type: File?
  inputBinding:
    prefix: --input_b_structure_path
- id: in_input_structure_path
  doc: Path to the input structure file
  type: File?
  inputBinding:
    prefix: --input_structure_path
- id: in_output_structure_path
  doc: "Path to the output structure file\n"
  type: File?
  inputBinding:
    prefix: --output_structure_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_structure_path
  doc: "Path to the output structure file\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_structure_path)
hints: []
cwlVersion: v1.1
baseCommand:
- pmxmutate
