version 1.0

task BedMerge {
  input {
    File inIn
    File outOut
    Boolean keepKeepB2b
    Boolean mergeMergeNames
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BedMerge \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-keep_b2b" false="" keepKeepB2b} \
      ~{true="-merge_names" false="" mergeMergeNames} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}