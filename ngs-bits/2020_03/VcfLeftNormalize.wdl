version 1.0

task VcfLeftNormalize {
  input {
    File inIn
    File outOut
    File refRef
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    VcfLeftNormalize \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(refRef) then ("-ref " +  '"' + refRef + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}