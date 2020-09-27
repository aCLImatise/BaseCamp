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
      ~{if (b) then "-b" else ""}
  >>>
  parameter_meta {
    b: ""
    an_k: ""
    bank_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}