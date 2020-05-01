version 1.0

task VcfCheck {
  input {
    File inIn
    File outOut
    Int linesLines
    File refRef
    Boolean infoInfo
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    VcfCheck \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(linesLines) then ("-lines " +  '"' + linesLines + '"') else ""} \
      ~{if defined(refRef) then ("-ref " +  '"' + refRef + '"') else ""} \
      ~{true="-info" false="" infoInfo} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}