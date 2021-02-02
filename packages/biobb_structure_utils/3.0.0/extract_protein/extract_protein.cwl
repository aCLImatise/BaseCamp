class: CommandLineTool
id: extract_protein.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File
  inputBinding:
    prefix: --config
- id: in_input_structure_path
  doc: 'Input structure file path. Accepted formats: pdb.'
  type: File
  inputBinding:
    prefix: --input_structure_path
- id: in_output_protein_path
  doc: "Output heteroatom file path. Accepted formats: pdb.\n"
  type: File
  inputBinding:
    prefix: --output_protein_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_protein_path
  doc: "Output heteroatom file path. Accepted formats: pdb.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_protein_path)
cwlVersion: v1.1
baseCommand:
- extract_protein
