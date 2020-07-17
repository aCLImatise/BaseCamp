version 1.0

task CompstructTrusted file {
  input {
    Boolean? options
    String test_file
  }
  command <<<
    compstruct trusted file \
      ~{test_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    test_file: ""
  }
}