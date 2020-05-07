version 1.0

task SvmClassifier.py {
  input {
    String outOutClassification
    String outOutClassificationAccuracy
    String outOutPrediction
    String outOutPredictionAccuracy
  }
  command <<<
    svm_classifier.py \
      ~{if defined(outOutClassification) then ("--outClassification " +  '"' + outOutClassification + '"') else ""} \
      ~{if defined(outOutClassificationAccuracy) then ("--outClassificationAccuracy " +  '"' + outOutClassificationAccuracy + '"') else ""} \
      ~{if defined(outOutPrediction) then ("--outPrediction " +  '"' + outOutPrediction + '"') else ""} \
      ~{if defined(outOutPredictionAccuracy) then ("--outPredictionAccuracy " +  '"' + outOutPredictionAccuracy + '"') else ""}
  >>>
}