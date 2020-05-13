version 1.0

task ArbExportTree {
  input {
    Boolean bifurcatedBifurcated
    Boolean noNoBranchLens
    Boolean doubleDoubleQuotes
  }
  command <<<
    arb_export_tree \
      ~{true="--bifurcated" false="" bifurcatedBifurcated} \
      ~{true="--nobranchlens" false="" noNoBranchLens} \
      ~{true="--doublequotes" false="" doubleDoubleQuotes}
  >>>
}