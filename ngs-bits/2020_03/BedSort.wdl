version 1.0

task BedSort {
  input {
    File inIn
    File outOut
    Boolean uniqUniq
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BedSort \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-uniq" false="" uniqUniq} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}