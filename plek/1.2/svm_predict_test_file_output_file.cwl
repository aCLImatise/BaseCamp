class: CommandLineTool
id: svm_predict_test_file_output_file.cwl
inputs:
- id: model_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- svm-predict
- test_file
- output_file
