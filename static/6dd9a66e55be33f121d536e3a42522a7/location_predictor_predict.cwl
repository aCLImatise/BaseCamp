class: CommandLineTool
id: location_predictor_predict.cwl
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
  doc: "Path to output directory. (default: out)\n"
  type: File?
  inputBinding:
    prefix: --output-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Path to output directory. (default: out)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- location_predictor
- predict
