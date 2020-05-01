version 1.0

task FastqExtractUMI {
  input {
    File in1In1
    File in2In2
    File out1Out1
    File out2Out2
    Int cut1Cut1
    Int cut2Cut2
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    FastqExtractUMI \
      ~{if defined(in1In1) then ("-in1 " +  '"' + in1In1 + '"') else ""} \
      ~{if defined(in2In2) then ("-in2 " +  '"' + in2In2 + '"') else ""} \
      ~{if defined(out1Out1) then ("-out1 " +  '"' + out1Out1 + '"') else ""} \
      ~{if defined(out2Out2) then ("-out2 " +  '"' + out2Out2 + '"') else ""} \
      ~{if defined(cut1Cut1) then ("-cut1 " +  '"' + cut1Cut1 + '"') else ""} \
      ~{if defined(cut2Cut2) then ("-cut2 " +  '"' + cut2Cut2 + '"') else ""} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}