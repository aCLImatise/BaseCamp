version 1.0

task SvmPredictOutputFile {
  input {
    String? testTestFile
    String? modelModelFile
    String? outputOutputFile
  }
  command <<<
    svm-predict output_file \
      ~{testTestFile} \
      ~{modelModelFile} \
      ~{outputOutputFile}
  >>>
}