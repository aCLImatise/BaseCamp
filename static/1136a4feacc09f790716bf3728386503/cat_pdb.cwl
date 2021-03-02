class: CommandLineTool
id: cat_pdb.cwl
inputs:
- id: in_config
  doc: This file can be a YAML file, JSON file or JSON string
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_structure_one
  doc: 'Input structure 1 file path. Accepted formats: pdb.'
  type: long?
  inputBinding:
    prefix: --input_structure1
- id: in_input_structure_two
  doc: 'Input structure 2 file path. Accepted formats: pdb.'
  type: long?
  inputBinding:
    prefix: --input_structure2
- id: in_output_structure_path
  doc: "Output structure file path. Accepted formats: pdb.\n"
  type: File?
  inputBinding:
    prefix: --output_structure_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_structure_path
  doc: "Output structure file path. Accepted formats: pdb.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_structure_path)
hints: []
cwlVersion: v1.1
baseCommand:
- cat_pdb
