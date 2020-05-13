version 1.0

task Polymutt {
  input {
    Boolean rateRateDeNovo
    Boolean tsTsTvDeNovo
    Boolean minMinPercSampleWithData
  }
  command <<<
    polymutt \
      ~{true="--rate_denovo" false="" rateRateDeNovo} \
      ~{true="--tstv_denovo" false="" tsTsTvDeNovo} \
      ~{true="--minPercSampleWithData" false="" minMinPercSampleWithData}
  >>>
}