version 1.0

task RibotricerLearnCutoff {
  input {
    String riboRiboBams
    String rnaRnaBams
    String riboRiboTSvs
    String rnaRnaTSvs
    String ribotRibotRicerIndex
    String prefixPrefix
    String filterFilterByTxAnnotation
    Float phasePhaseScoreCutOff
    Int minMinValidCodons
    Float samplingSamplingRatio
    Int nNBootstraps
  }
  command <<<
    ribotricer learn-cutoff \
      ~{if defined(riboRiboBams) then ("--ribo_bams " +  '"' + riboRiboBams + '"') else ""} \
      ~{if defined(rnaRnaBams) then ("--rna_bams " +  '"' + rnaRnaBams + '"') else ""} \
      ~{if defined(riboRiboTSvs) then ("--ribo_tsvs " +  '"' + riboRiboTSvs + '"') else ""} \
      ~{if defined(rnaRnaTSvs) then ("--rna_tsvs " +  '"' + rnaRnaTSvs + '"') else ""} \
      ~{if defined(ribotRibotRicerIndex) then ("--ribotricer_index " +  '"' + ribotRibotRicerIndex + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(filterFilterByTxAnnotation) then ("--filter_by_tx_annotation " +  '"' + filterFilterByTxAnnotation + '"') else ""} \
      ~{if defined(phasePhaseScoreCutOff) then ("--phase_score_cutoff " +  '"' + phasePhaseScoreCutOff + '"') else ""} \
      ~{if defined(minMinValidCodons) then ("--min_valid_codons " +  '"' + minMinValidCodons + '"') else ""} \
      ~{if defined(samplingSamplingRatio) then ("--sampling_ratio " +  '"' + samplingSamplingRatio + '"') else ""} \
      ~{if defined(nNBootstraps) then ("--n_bootstraps " +  '"' + nNBootstraps + '"') else ""}
  >>>
}