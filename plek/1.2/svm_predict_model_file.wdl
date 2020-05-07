version 1.0

task SvmPredictModelFile {
  input {
    String? testTestFile
    String? modelModelFile
    String? outputOutputFile
  }
  command <<<
    svm-predict model_file \
      ~{testTestFile} \
      ~{modelModelFile} \
      ~{outputOutputFile}
  >>>
}