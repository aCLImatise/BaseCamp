class: CommandLineTool
id: babel_minimize.cwl
inputs:
- id: in_config
  doc: Configuration file
  type: File?
  inputBinding:
    prefix: --config
- id: in_input_path
  doc: 'Path to the input file. Accepted formats: pdb, mol2.'
  type: File?
  inputBinding:
    prefix: --input_path
- id: in_output_path
  doc: "Path to the output file. Accepted formats: pdb, mol2.\n"
  type: File?
  inputBinding:
    prefix: --output_path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: "Path to the output file. Accepted formats: pdb, mol2.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biobb_chemistry:3.5.0--py_0
cwlVersion: v1.1
baseCommand:
- babel_minimize
