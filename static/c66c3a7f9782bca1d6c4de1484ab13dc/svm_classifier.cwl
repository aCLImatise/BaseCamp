class: CommandLineTool
id: svm_classifier.py.cwl
inputs:
- id: out_classification
  doc: Name of the output file to store classification performed on the traing data
    set. TSV format.
  type: string
  inputBinding:
    prefix: --outClassification
- id: out_classification_accuracy
  doc: Output classification accuracy value on the training data set.
  type: string
  inputBinding:
    prefix: --outClassificationAccuracy
- id: out_prediction
  doc: Name of the output file to store prediction performed on the target data set.
    TSV format.
  type: string
  inputBinding:
    prefix: --outPrediction
- id: out_prediction_accuracy
  doc: Output prediction accuracy value on the target data set.
  type: string
  inputBinding:
    prefix: --outPredictionAccuracy
outputs: []
cwlVersion: v1.1
baseCommand:
- svm_classifier.py
