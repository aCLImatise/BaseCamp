class: CommandLineTool
id: garnett_train_classifier.R.cwl
inputs:
- id: output_path
  doc: Path to the output file
  type: string
  inputBinding:
    prefix: --output-path
outputs: []
cwlVersion: v1.1
baseCommand:
- garnett_train_classifier.R
