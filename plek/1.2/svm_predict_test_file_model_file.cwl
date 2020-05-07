class: CommandLineTool
id: svm_predict_test_file_model_file.cwl
inputs:
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- svm-predict
- test_file
- model_file
