version 1.0

task FuExtract {
  input {
    String input_file_dot_fa
  }
  command <<<
    fu-extract \
      ~{input_file_dot_fa}
  >>>
  parameter_meta {
    input_file_dot_fa: ""
  }
}