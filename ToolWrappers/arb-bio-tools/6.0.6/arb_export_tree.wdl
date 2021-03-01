version 1.0

task ArbExportTree {
  input {
    Boolean? bifurcated
    Boolean? no_branch_lens
    Boolean? double_quotes
  }
  command <<<
    arb_export_tree \
      ~{if (bifurcated) then "--bifurcated" else ""} \
      ~{if (no_branch_lens) then "--nobranchlens" else ""} \
      ~{if (double_quotes) then "--doublequotes" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bifurcated: "write a bifurcated tree (default is a trifurcated tree)"
    no_branch_lens: "do not write branchlengths"
    double_quotes: "use doublequotes (default is singlequotes)"
  }
  output {
    File out_stdout = stdout()
  }
}