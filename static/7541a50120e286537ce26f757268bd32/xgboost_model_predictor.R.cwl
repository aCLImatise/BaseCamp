class: CommandLineTool
id: xgboost_model_predictor.R.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- xgboost_model_predictor.R
