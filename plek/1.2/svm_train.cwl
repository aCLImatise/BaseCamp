class: CommandLineTool
id: svm_train.cwl
inputs:
- id: training_set_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: model_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- svm-train
