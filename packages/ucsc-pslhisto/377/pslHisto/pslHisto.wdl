version 1.0

task PslHisto {
  input {
    Boolean? multi_only
    Boolean? nonzero
  }
  command <<<
    pslHisto \
      ~{if (multi_only) then "-multiOnly" else ""} \
      ~{if (nonzero) then "-nonZero" else ""}
  >>>
  parameter_meta {
    multi_only: "- omit queries with only one alignment from output."
    nonzero: "- omit queries with zero values."
  }
  output {
    File out_stdout = stdout()
  }
}