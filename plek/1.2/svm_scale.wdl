version 1.0

task SvmScale {
  input {
    String? dataDataFilename
  }
  command <<<
    svm-scale \
      ~{dataDataFilename}
  >>>
}