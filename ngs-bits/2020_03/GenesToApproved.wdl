version 1.0

task GenesToApproved {
  input {
    File inIn
    File outOut
    Boolean testTest
    Boolean reportReportAmbiguous
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    GenesToApproved \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-test" false="" testTest} \
      ~{true="-report_ambiguous" false="" reportReportAmbiguous} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}