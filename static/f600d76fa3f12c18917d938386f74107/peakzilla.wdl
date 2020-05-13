version 1.0

task Peakzilla.py {
  input {
    String modelModelPeaks
    String enrichmentEnrichmentCutOff
    String scoreScoreCutOff
    String fragmentFragmentSize
    Boolean gaussianGaussian
    Boolean bedBedPe
    String logLog
    Boolean negativeNegative
  }
  command <<<
    peakzilla.py \
      ~{if defined(modelModelPeaks) then ("--model_peaks " +  '"' + modelModelPeaks + '"') else ""} \
      ~{if defined(enrichmentEnrichmentCutOff) then ("--enrichment_cutoff " +  '"' + enrichmentEnrichmentCutOff + '"') else ""} \
      ~{if defined(scoreScoreCutOff) then ("--score_cutoff " +  '"' + scoreScoreCutOff + '"') else ""} \
      ~{if defined(fragmentFragmentSize) then ("--fragment_size " +  '"' + fragmentFragmentSize + '"') else ""} \
      ~{true="--gaussian" false="" gaussianGaussian} \
      ~{true="--bedpe" false="" bedBedPe} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--negative" false="" negativeNegative}
  >>>
}