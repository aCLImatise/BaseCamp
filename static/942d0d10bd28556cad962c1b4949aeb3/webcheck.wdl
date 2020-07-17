version 1.0

task Webcheck.sh {
  input {
    String input_files
  }
  command <<<
    webcheck.sh \
      ~{input_files}
  >>>
  parameter_meta {
    input_files: ""
  }
}