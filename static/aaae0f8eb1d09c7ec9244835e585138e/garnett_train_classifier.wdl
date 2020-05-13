version 1.0

task GarnettTrainClassifier.R {
  input {
    String outputOutputPath
  }
  command <<<
    garnett_train_classifier.R \
      ~{if defined(outputOutputPath) then ("--output-path " +  '"' + outputOutputPath + '"') else ""}
  >>>
}