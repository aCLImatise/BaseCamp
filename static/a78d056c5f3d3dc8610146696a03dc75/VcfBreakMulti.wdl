version 1.0

task VcfBreakMulti {
  input {
    File inIn
    File outOut
    Boolean noNoErrors
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    VcfBreakMulti \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-no_errors" false="" noNoErrors} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}