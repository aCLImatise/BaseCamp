version 1.0

task VcfStreamSort {
  input {
    File inIn
    File outOut
    Int nN
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    VcfStreamSort \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}