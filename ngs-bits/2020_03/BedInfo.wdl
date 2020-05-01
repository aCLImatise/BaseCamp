version 1.0

task BedInfo {
  input {
    File inIn
    File outOut
    Boolean noNoMerge
    Boolean filenameFilename
    File faiFai
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BedInfo \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-nomerge" false="" noNoMerge} \
      ~{true="-filename" false="" filenameFilename} \
      ~{if defined(faiFai) then ("-fai " +  '"' + faiFai + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}