version 1.0

task QuasitoolsHydra {
  input {
    Boolean generateGenerateConsensus
    Int consensusConsensusPct
    Boolean quietQuiet
    Boolean trimTrimReads
    Boolean maskMaskReads
    Int minMinReadQual
    Int lengthLengthCutOff
    Int scoreScoreCutOff
    Boolean medianMedian
    Boolean nsNs
    Float errorErrorRate
    Int minMinVariantQual
    Int minMinDp
    Int minMinAc
    Float minMinFreq
    String idId
    String? optionsOptions
    String? forwardForward
    String? reverseReverse
  }
  command <<<
    quasitools hydra \
      ~{optionsOptions} \
      ~{true="--generate_consensus" false="" generateGenerateConsensus} \
      ~{if defined(consensusConsensusPct) then ("--consensus_pct " +  '"' + consensusConsensusPct + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--trim_reads" false="" trimTrimReads} \
      ~{true="--mask_reads" false="" maskMaskReads} \
      ~{if defined(minMinReadQual) then ("--min_read_qual " +  '"' + minMinReadQual + '"') else ""} \
      ~{if defined(lengthLengthCutOff) then ("--length_cutoff " +  '"' + lengthLengthCutOff + '"') else ""} \
      ~{if defined(scoreScoreCutOff) then ("--score_cutoff " +  '"' + scoreScoreCutOff + '"') else ""} \
      ~{true="--median" false="" medianMedian} \
      ~{true="--ns" false="" nsNs} \
      ~{if defined(errorErrorRate) then ("--error_rate " +  '"' + errorErrorRate + '"') else ""} \
      ~{if defined(minMinVariantQual) then ("--min_variant_qual " +  '"' + minMinVariantQual + '"') else ""} \
      ~{if defined(minMinDp) then ("--min_dp " +  '"' + minMinDp + '"') else ""} \
      ~{if defined(minMinAc) then ("--min_ac " +  '"' + minMinAc + '"') else ""} \
      ~{if defined(minMinFreq) then ("--min_freq " +  '"' + minMinFreq + '"') else ""} \
      ~{if defined(idId) then ("--id " +  '"' + idId + '"') else ""} \
      ~{forwardForward} \
      ~{reverseReverse}
  >>>
}