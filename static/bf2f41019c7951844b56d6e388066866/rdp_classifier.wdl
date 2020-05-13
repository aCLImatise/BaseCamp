version 1.0

task RdpClassifier {
  input {
    String formatFormat
    String outputOutputFile
    String queryQueryFile
    String trainTrainPropFile
  }
  command <<<
    rdp_classifier \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--outputFile " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(queryQueryFile) then ("--queryFile " +  '"' + queryQueryFile + '"') else ""} \
      ~{if defined(trainTrainPropFile) then ("--train_propfile " +  '"' + trainTrainPropFile + '"') else ""}
  >>>
}