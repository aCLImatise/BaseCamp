version 1.0

task Genseq {
  input {
    Int nNSeq
    Boolean aA
    Boolean meanMeanLogLen
    Boolean sdSdLogLen
  }
  command <<<
    genseq \
      ~{if defined(nNSeq) then ("-Nseq " +  '"' + nNSeq + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{true="-meanloglen" false="" meanMeanLogLen} \
      ~{true="-sdloglen" false="" sdSdLogLen}
  >>>
}