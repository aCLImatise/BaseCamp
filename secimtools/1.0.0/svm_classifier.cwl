#!/usr/bin/env cwl-runner

baseCommand:
- svm_classifier.py
class: CommandLineTool
cwlVersion: v1.0
id: svm_classifier.py
inputs:
- doc: Name of the output file to store classification performed on the traing data
    set. TSV format.
  id: out_classification
  inputBinding:
    prefix: --outClassification
  type: string
- doc: Output classification accuracy value on the training data set.
  id: out_classification_accuracy
  inputBinding:
    prefix: --outClassificationAccuracy
  type: string
- doc: Name of the output file to store prediction performed on the target data set.
    TSV format.
  id: out_prediction
  inputBinding:
    prefix: --outPrediction
  type: string
- doc: Output prediction accuracy value on the target data set.
  id: out_prediction_accuracy
  inputBinding:
    prefix: --outPredictionAccuracy
  type: string
