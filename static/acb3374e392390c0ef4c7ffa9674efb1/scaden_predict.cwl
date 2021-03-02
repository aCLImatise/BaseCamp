class: CommandLineTool
id: scaden_predict.cwl
inputs:
- id: in_model_dir
  doc: Path to trained model
  type: File?
  inputBinding:
    prefix: --model_dir
- id: in_out_name
  doc: Name of predictions file.
  type: File?
  inputBinding:
    prefix: --outname
- id: in_prediction_data
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- scaden
- predict
