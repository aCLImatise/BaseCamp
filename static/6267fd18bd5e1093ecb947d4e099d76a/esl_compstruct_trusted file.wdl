version 1.0

task EslCompstructTrusted file {
  input {
    Boolean? options
    String test_file
  }
  command <<<
    esl-compstruct trusted file \
      ~{test_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    test_file: ""
  }
}