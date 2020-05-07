version 1.0

task BedExtend {
  input {
    Int nN
    File inIn
    File outOut
    File faiFai
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BedExtend \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(faiFai) then ("-fai " +  '"' + faiFai + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}