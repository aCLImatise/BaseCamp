version 1.0

task SvmPredictTestFileModelFile {
  input {
    String? outputOutputFile
  }
  command <<<
    svm-predict test_file model_file \
      ~{outputOutputFile}
  >>>
}