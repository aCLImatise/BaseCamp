class: CommandLineTool
id: mutate.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_pdb_path
  doc: Input PDB file name
  type: File?
  inputBinding:
    prefix: --input_pdb_path
- id: in_output_pdb_path
  doc: "Output PDB file name\n"
  type: File?
  inputBinding:
    prefix: --output_pdb_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_pdb_path
  doc: "Output PDB file name\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_pdb_path)
hints: []
cwlVersion: v1.1
baseCommand:
- mutate
