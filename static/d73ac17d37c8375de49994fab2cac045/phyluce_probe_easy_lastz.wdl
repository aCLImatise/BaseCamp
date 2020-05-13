version 1.0

task PhyluceProbeEasyLastz {
  input {
    String targetTarget
    String queryQuery
    String outputOutput
    String identityIdentity
    String coverageCoverage
    Int minMinMatch
  }
  command <<<
    phyluce_probe_easy_lastz \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(identityIdentity) then ("--identity " +  '"' + identityIdentity + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(minMinMatch) then ("--min_match " +  '"' + minMinMatch + '"') else ""}
  >>>
}