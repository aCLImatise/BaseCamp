class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sbpipe_move_datasets.cwl
inputs:
- id: model_name
  doc: the model name without extension
  type: string
  inputBinding:
    prefix: --model-name
- id: input_path
  doc: the path containing the input files
  type: File
  inputBinding:
    prefix: --input-path
- id: output_path
  doc: the path to store the output files
  type: File
  inputBinding:
    prefix: --output-path
outputs: []
cwlVersion: v1.1
baseCommand:
- sbpipe_move_datasets
