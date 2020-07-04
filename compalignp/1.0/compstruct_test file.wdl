version 1.0

task CompstructTest file {
  input {
    Boolean? options
    String comp_struct
    String trusted_file
    String test_file
  }
  command <<<
    compstruct test file \
      ~{comp_struct} \
      ~{trusted_file} \
      ~{test_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    comp_struct: ""
    trusted_file: ""
    test_file: ""
  }
}