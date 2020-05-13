class: CommandLineTool
id: model_matrix.cwl
inputs:
- id: input_file
  doc: 'Path to file containing input. (default: None)'
  type: string
  inputBinding:
    prefix: --input-file
- id: model_file
  doc: 'Path to a fit model file. (default: model)'
  type: string
  inputBinding:
    prefix: --model-file
- id: output_dir
  doc: 'Path to output directory. (default: out)'
  type: string
  inputBinding:
    prefix: --output-dir
- id: output_format
  doc: 'Output file format. (default: MatrixMarket)'
  type: string
  inputBinding:
    prefix: --output-format
outputs: []
cwlVersion: v1.1
baseCommand:
- model
- matrix
