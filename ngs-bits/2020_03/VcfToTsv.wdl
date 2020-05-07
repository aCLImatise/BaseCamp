version 1.0

task VcfToTsv {
  input {
    File inIn
    File outOut
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    VcfToTsv \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}