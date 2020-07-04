version 1.0

task SvmClassifier.py {
  input {
    String? out_classification
    String? out_classification_accuracy
    String? out_prediction
    String? out_prediction_accuracy
    String? trw
    String? trd
    String? tew
  }
  command <<<
    svm_classifier.py \
      ~{if defined(out_classification) then ("--outClassification " +  '"' + out_classification + '"') else ""} \
      ~{if defined(out_classification_accuracy) then ("--outClassificationAccuracy " +  '"' + out_classification_accuracy + '"') else ""} \
      ~{if defined(out_prediction) then ("--outPrediction " +  '"' + out_prediction + '"') else ""} \
      ~{if defined(out_prediction_accuracy) then ("--outPredictionAccuracy " +  '"' + out_prediction_accuracy + '"') else ""} \
      ~{if defined(trw) then ("-trw " +  '"' + trw + '"') else ""} \
      ~{if defined(trd) then ("-trd " +  '"' + trd + '"') else ""} \
      ~{if defined(tew) then ("-tew " +  '"' + tew + '"') else ""}
  >>>
  parameter_meta {
    out_classification: "Name of the output file to store classification performed on the traing data set. TSV format."
    out_classification_accuracy: "Output classification accuracy value on the training data set."
    out_prediction: "Name of the output file to store prediction performed on the target data set. TSV format."
    out_prediction_accuracy: "Output prediction accuracy value on the target data set."
    trw: ""
    trd: ""
    tew: ""
  }
}