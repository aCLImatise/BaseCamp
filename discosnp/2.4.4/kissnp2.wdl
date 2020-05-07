version 1.0

task Kissnp2 {
  input {
    Boolean maxMaxAmbigousInDel
    Boolean lL
    Boolean nbNbCores
    Boolean verboseVerbose
    Boolean versionVersion
    Boolean bfsBfsMaxDepth
    Boolean bfsBfsMaxBreadth
    Boolean maxMaxTruncatedPathLengthDifference
  }
  command <<<
    kissnp2 \
      ~{true="-max_ambigous_indel" false="" maxMaxAmbigousInDel} \
      ~{true="-l" false="" lL} \
      ~{true="-nb-cores" false="" nbNbCores} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-bfs-max-depth" false="" bfsBfsMaxDepth} \
      ~{true="-bfs-max-breadth" false="" bfsBfsMaxBreadth} \
      ~{true="-max_truncated_path_length_difference" false="" maxMaxTruncatedPathLengthDifference}
  >>>
}