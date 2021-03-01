class: CommandLineTool
id: sbpipe_move_datasets.cwl
inputs:
- id: in_model_name
  doc: the model name without extension
  type: string?
  inputBinding:
    prefix: --model-name
- id: in_input_path
  doc: the path containing the input files
  type: File?
  inputBinding:
    prefix: --input-path
- id: in_output_path
  doc: the path to store the output files
  type: File?
  inputBinding:
    prefix: --output-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: the path to store the output files
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
hints: []
cwlVersion: v1.1
baseCommand:
- sbpipe_move_datasets
