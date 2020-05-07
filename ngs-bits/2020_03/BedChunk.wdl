version 1.0

task BedChunk {
  input {
    Int nN
    File inIn
    File outOut
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BedChunk \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}