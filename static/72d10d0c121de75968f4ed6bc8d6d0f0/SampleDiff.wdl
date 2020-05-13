version 1.0

task SampleDiff {
  input {
    File in1In1
    File in2In2
    File outOut
    Int windowWindow
    Boolean neiNei
    Boolean smSm
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    SampleDiff \
      ~{if defined(in1In1) then ("-in1 " +  '"' + in1In1 + '"') else ""} \
      ~{if defined(in2In2) then ("-in2 " +  '"' + in2In2 + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(windowWindow) then ("-window " +  '"' + windowWindow + '"') else ""} \
      ~{true="-nei" false="" neiNei} \
      ~{true="-sm" false="" smSm} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}