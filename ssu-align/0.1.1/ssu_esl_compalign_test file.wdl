version 1.0

task SsuEslCompalignTest file {
  input {
    Boolean? options
    String ssu_esl_comp_align
    String trusted_file
    String test_file
  }
  command <<<
    ssu-esl-compalign test file \
      ~{ssu_esl_comp_align} \
      ~{trusted_file} \
      ~{test_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    ssu_esl_comp_align: ""
    trusted_file: ""
    test_file: ""
  }
}