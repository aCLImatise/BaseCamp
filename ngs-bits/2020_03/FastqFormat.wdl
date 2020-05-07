version 1.0

task FastqFormat {
  input {
    File inIn
    File outOut
    Int readsReads
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    FastqFormat \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(readsReads) then ("-reads " +  '"' + readsReads + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}