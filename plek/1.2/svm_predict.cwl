class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/svm_predict.cwl
inputs:
- id: test_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: model_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- svm-predict
