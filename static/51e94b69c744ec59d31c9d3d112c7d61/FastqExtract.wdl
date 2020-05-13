version 1.0

task FastqExtract {
  input {
    File inIn
    File idsIds
    File outOut
    Boolean vV
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    FastqExtract \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(idsIds) then ("-ids " +  '"' + idsIds + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}