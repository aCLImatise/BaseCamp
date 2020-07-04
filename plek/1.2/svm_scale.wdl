version 1.0

task SvmScale {
  input {
    String data_filename
  }
  command <<<
    svm-scale \
      ~{data_filename}
  >>>
  parameter_meta {
    data_filename: ""
  }
}