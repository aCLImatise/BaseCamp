class: CommandLineTool
id: scaden_predict.cwl
inputs:
- id: model_dir
  doc: Path to trained model
  type: string
  inputBinding:
    prefix: --model_dir
- id: out_name
  doc: Name of predictions file.
  type: string
  inputBinding:
    prefix: --outname
outputs: []
cwlVersion: v1.1
baseCommand:
- scaden
- predict
