version 1.0

task SsuEslCompstructTest file {
  input {
    Boolean? options
    String ssu_esl_comp_struct
    String trusted_file
    String test_file
  }
  command <<<
    ssu-esl-compstruct test file \
      ~{ssu_esl_comp_struct} \
      ~{trusted_file} \
      ~{test_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    ssu_esl_comp_struct: ""
    trusted_file: ""
    test_file: ""
  }
}