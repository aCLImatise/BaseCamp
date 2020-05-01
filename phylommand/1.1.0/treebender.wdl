version 1.0

task Treebender {
  input {
    Boolean aA
    Boolean internalInternalNodeStats
    Boolean internalInternalNodeStats
    Boolean uU
    Boolean vV
    Boolean uU
    Boolean nniNni
    Boolean getGetRelaxedOutGroup
  }
  command <<<
    treebender \
      ~{true="-a" false="" aA} \
      ~{true="--internal_node_stats" false="" internalInternalNodeStats} \
      ~{true="--internal_node_stats" false="" internalInternalNodeStats} \
      ~{true="-u" false="" uU} \
      ~{true="-V" false="" vV} \
      ~{true="-U" false="" uU} \
      ~{true="--nni" false="" nniNni} \
      ~{true="--get_relaxed_outgroup" false="" getGetRelaxedOutGroup}
  >>>
}