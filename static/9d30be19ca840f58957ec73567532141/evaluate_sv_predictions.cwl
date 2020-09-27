class: CommandLineTool
id: evaluate_sv_predictions.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- evaluate-sv-predictions
