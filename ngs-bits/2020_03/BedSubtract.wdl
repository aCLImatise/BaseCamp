version 1.0

task BedSubtract {
  input {
    File in2In2
    File inIn
    File outOut
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    BedSubtract \
      ~{if defined(in2In2) then ("-in2 " +  '"' + in2In2 + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}