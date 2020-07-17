version 1.0

task EslCompalignTrusted file {
  input {
    Boolean? options
    String test_file
  }
  command <<<
    esl-compalign trusted file \
      ~{test_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    test_file: ""
  }
}