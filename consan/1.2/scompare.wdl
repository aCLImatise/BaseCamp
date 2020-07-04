version 1.0

task Scompare {
  input {
    Boolean? options
    String test_msa
  }
  command <<<
    scompare \
      ~{test_msa} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    test_msa: ""
  }
}