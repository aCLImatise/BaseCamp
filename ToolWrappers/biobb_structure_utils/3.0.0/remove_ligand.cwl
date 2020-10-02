class: CommandLineTool
id: remove_ligand.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File
  inputBinding:
    prefix: --config
- id: in_input_structure_path
  doc: Input structure file name
  type: File
  inputBinding:
    prefix: --input_structure_path
- id: in_output_structure_path
  doc: "Output structure file name\n"
  type: File
  inputBinding:
    prefix: --output_structure_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_structure_path
  doc: "Output structure file name\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_structure_path)
cwlVersion: v1.1
baseCommand:
- remove_ligand
