version 1.0

task ReadQC {
  input {
    File in1In1
    File in2In2
    File outOut
    Boolean txtTxt
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    ReadQC \
      ~{if defined(in1In1) then ("-in1 " +  '"' + in1In1 + '"') else ""} \
      ~{if defined(in2In2) then ("-in2 " +  '"' + in2In2 + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{true="-txt" false="" txtTxt} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}