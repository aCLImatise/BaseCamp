version 1.0

task VariantFilterRegions {
  input {
    File inIn
    File outOut
    File regReg
    String rR
    String markMark
    Boolean inInV
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    VariantFilterRegions \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(regReg) then ("-reg " +  '"' + regReg + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(markMark) then ("-mark " +  '"' + markMark + '"') else ""} \
      ~{true="-inv" false="" inInV} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}