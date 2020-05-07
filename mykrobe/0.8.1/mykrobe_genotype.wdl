version 1.0

task MykrobeGenotype {
  input {
    String ctxCtx
    Boolean forceForce
    Boolean ontOnt
    Boolean guessGuessSequenceMethod
    Boolean ignoreIgnoreMinorCalls
    String ignoreIgnoreFiltered
    String modelModel
    String ploidyPloidy
    Array[String]+ filtersFilters
    Boolean reportReportAllCalls
    String expectedExpectedErrorRate
    Int minMinVariantConf
    Int minMinGeneConf
    Int minMinProportionExpectedDepth
    Int minMinGenePercentCoVgThreshold
    String outputOutput
    Boolean quietQuiet
    String? sampleSample
    String? probeProbeSet
  }
  command <<<
    mykrobe genotype \
      ~{sampleSample} \
      ~{if defined(ctxCtx) then ("--ctx " +  '"' + ctxCtx + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--ont" false="" ontOnt} \
      ~{true="--guess_sequence_method" false="" guessGuessSequenceMethod} \
      ~{true="--ignore_minor_calls" false="" ignoreIgnoreMinorCalls} \
      ~{if defined(ignoreIgnoreFiltered) then ("--ignore_filtered " +  '"' + ignoreIgnoreFiltered + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(ploidyPloidy) then ("--ploidy " +  '"' + ploidyPloidy + '"') else ""} \
      ~{if defined(filtersFilters) then ("--filters " +  '"' + filtersFilters + '"') else ""} \
      ~{true="--report_all_calls" false="" reportReportAllCalls} \
      ~{if defined(expectedExpectedErrorRate) then ("--expected_error_rate " +  '"' + expectedExpectedErrorRate + '"') else ""} \
      ~{if defined(minMinVariantConf) then ("--min_variant_conf " +  '"' + minMinVariantConf + '"') else ""} \
      ~{if defined(minMinGeneConf) then ("--min_gene_conf " +  '"' + minMinGeneConf + '"') else ""} \
      ~{if defined(minMinProportionExpectedDepth) then ("--min_proportion_expected_depth " +  '"' + minMinProportionExpectedDepth + '"') else ""} \
      ~{if defined(minMinGenePercentCoVgThreshold) then ("--min_gene_percent_covg_threshold " +  '"' + minMinGenePercentCoVgThreshold + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{probeProbeSet}
  >>>
}