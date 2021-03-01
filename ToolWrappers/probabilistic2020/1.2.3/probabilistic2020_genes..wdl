version 1.0

task Probabilistic2020Genes {
  input {
    Boolean? v
    String? l
    String? ll
    Int probabilistic_two_zero_two_zero
  }
  command <<<
    probabilistic2020 genes_ \
      ~{probabilistic_two_zero_two_zero} \
      ~{if (v) then "-v" else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(ll) then ("-ll " +  '"' + ll + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    v: ""
    l: ""
    ll: ""
    probabilistic_two_zero_two_zero: ""
  }
  output {
    File out_stdout = stdout()
  }
}