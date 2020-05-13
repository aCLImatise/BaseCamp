version 1.0

task SvmPredictTestFileOutputFile {
  input {
    String? modelModelFile
    String? outputOutputFile
  }
  command <<<
    svm-predict test_file output_file \
      ~{modelModelFile} \
      ~{outputOutputFile}
  >>>
}