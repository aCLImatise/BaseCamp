version 1.0

task VcfSort {
  input {
    File inIn
    File outOut
    Boolean qualQual
    File faiFai
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    VcfSort \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-qual" false="" qualQual} \
      ~{if defined(faiFai) then ("-fai " +  '"' + faiFai + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}