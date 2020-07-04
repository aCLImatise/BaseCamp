version 1.0

task PslHisto {
  input {
    Boolean? multi_only
    Boolean? nonzero
  }
  command <<<
    pslHisto \
      ~{true="-multiOnly" false="" multi_only} \
      ~{true="-nonZero" false="" nonzero}
  >>>
  parameter_meta {
    multi_only: "- omit queries with only one alignment from output."
    nonzero: "- omit queries with zero values."
  }
}