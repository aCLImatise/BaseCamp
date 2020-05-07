version 1.0

task FastqMidParser {
  input {
    File inIn
    File outOut
    Int linesLines
    Int midsMids
    File sheetSheet
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    FastqMidParser \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(linesLines) then ("-lines " +  '"' + linesLines + '"') else ""} \
      ~{if defined(midsMids) then ("-mids " +  '"' + midsMids + '"') else ""} \
      ~{if defined(sheetSheet) then ("-sheet " +  '"' + sheetSheet + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}