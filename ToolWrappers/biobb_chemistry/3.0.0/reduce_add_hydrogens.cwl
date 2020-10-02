class: CommandLineTool
id: reduce_add_hydrogens.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File
  inputBinding:
    prefix: --config
- id: in_input_path
  doc: 'Path to the input file. Accepted formats: pdb.'
  type: File
  inputBinding:
    prefix: --input_path
- id: in_output_path
  doc: "Path to the output file. Accepted formats: pdb.\n"
  type: File
  inputBinding:
    prefix: --output_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: "Path to the output file. Accepted formats: pdb.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_path)
cwlVersion: v1.1
baseCommand:
- reduce_add_hydrogens
