version 1.0

task FuGrep {
  input {
    String pattern
    String input_file_dot_fa
  }
  command <<<
    fu-grep \
      ~{pattern} \
      ~{input_file_dot_fa}
  >>>
  parameter_meta {
    pattern: ""
    input_file_dot_fa: ""
  }
}