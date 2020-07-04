version 1.0

task SsuEslCompalignTrusted file {
  input {
    Boolean? options
    String test_file
  }
  command <<<
    ssu-esl-compalign trusted file \
      ~{test_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    test_file: ""
  }
}