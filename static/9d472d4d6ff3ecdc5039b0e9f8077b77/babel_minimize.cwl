class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/babel_minimize.cwl
inputs:
- id: config
  doc: Configuration file
  type: string
  inputBinding:
    prefix: --config
- id: input_path
  doc: 'Path to the input file. Accepted formats: pdb, mol2.'
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path
  doc: 'Path to the output file. Accepted formats: pdb, mol2.'
  type: string
  inputBinding:
    prefix: --output_path
outputs: []
cwlVersion: v1.1
baseCommand:
- babel_minimize
