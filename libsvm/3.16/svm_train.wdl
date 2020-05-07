version 1.0

task SvmTrain {
  input {
    String? trainingTrainingSetFile
    String? modelModelFile
  }
  command <<<
    svm-train \
      ~{trainingTrainingSetFile} \
      ~{modelModelFile}
  >>>
}