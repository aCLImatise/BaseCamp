version 1.0

task Clk {
  input {
    Boolean? b
    String? an_k
    String bank_name
  }
  command <<<
    clk \
      ~{an_k} \
      ~{bank_name} \
      ~{true="-b" false="" b}
  >>>
  parameter_meta {
    b: ""
    an_k: ""
    bank_name: ""
  }
}