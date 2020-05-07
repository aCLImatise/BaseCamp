version 1.0

task BamCleanHaloplex {
  input {
    File inIn
    File outOut
    Int minMinMatch
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BamCleanHaloplex \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(minMinMatch) then ("-min_match " +  '"' + minMinMatch + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}