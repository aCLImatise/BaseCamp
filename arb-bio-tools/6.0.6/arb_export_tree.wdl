version 1.0

task ArbExportTree {
  input {
    Boolean? bifurcated
    Boolean? no_branch_lens
    Boolean? double_quotes
  }
  command <<<
    arb_export_tree \
      ~{true="--bifurcated" false="" bifurcated} \
      ~{true="--nobranchlens" false="" no_branch_lens} \
      ~{true="--doublequotes" false="" double_quotes}
  >>>
  parameter_meta {
    bifurcated: "write a bifurcated tree (default is a trifurcated tree)"
    no_branch_lens: "do not write branchlengths"
    double_quotes: "use doublequotes (default is singlequotes)"
  }
}