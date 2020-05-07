version 1.0

task Dfq2fqV2.pl {
  input {
    Boolean finishFinish
    Boolean checkCheck
    Boolean pnpPnp
    Boolean listList
    Boolean nNList
  }
  command <<<
    dfq2fq_v2.pl \
      ~{true="--finish" false="" finishFinish} \
      ~{true="--check" false="" checkCheck} \
      ~{true="--pnp" false="" pnpPnp} \
      ~{true="--list" false="" listList} \
      ~{true="--nlist" false="" nNList}
  >>>
}