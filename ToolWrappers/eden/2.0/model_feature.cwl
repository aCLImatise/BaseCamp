class: CommandLineTool
id: model_feature.cwl
inputs:
- id: in_input_file
  doc: 'Path to file containing input. (default: None)'
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_model_file
  doc: 'Path to a fit model file. (default: model)'
  type: File?
  inputBinding:
    prefix: --model-file
- id: in_output_dir
  doc: 'Path to output directory. (default: out)'
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_output_format
  doc: "Output file format. (default: MatrixMarket)\n"
  type: File?
  inputBinding:
    prefix: --output-format
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'Path to output directory. (default: out)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_output_format
  doc: "Output file format. (default: MatrixMarket)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_format)
hints: []
cwlVersion: v1.1
baseCommand:
- model
- feature
