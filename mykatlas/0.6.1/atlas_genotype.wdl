version 1.0

task AtlasGenotype {
  input {
    String ctxCtx
    Boolean forceForce
    Boolean ontOnt
    String ignoreIgnoreFiltered
    String modelModel
    Array[String]+ filtersFilters
    Boolean reportReportAllCalls
    String expectedExpectedErrorRate
    Int minMinVariantConf
    Int minMinGeneConf
    Int minMinGenePercentCoVgThreshold
    Boolean quietQuiet
    String? sampleSample
    String? probeProbeSet
  }
  command <<<
    atlas genotype \
      ~{sampleSample} \
      ~{if defined(ctxCtx) then ("--ctx " +  '"' + ctxCtx + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--ont" false="" ontOnt} \
      ~{if defined(ignoreIgnoreFiltered) then ("--ignore_filtered " +  '"' + ignoreIgnoreFiltered + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(filtersFilters) then ("--filters " +  '"' + filtersFilters + '"') else ""} \
      ~{true="--report_all_calls" false="" reportReportAllCalls} \
      ~{if defined(expectedExpectedErrorRate) then ("--expected_error_rate " +  '"' + expectedExpectedErrorRate + '"') else ""} \
      ~{if defined(minMinVariantConf) then ("--min_variant_conf " +  '"' + minMinVariantConf + '"') else ""} \
      ~{if defined(minMinGeneConf) then ("--min_gene_conf " +  '"' + minMinGeneConf + '"') else ""} \
      ~{if defined(minMinGenePercentCoVgThreshold) then ("--min_gene_percent_covg_threshold " +  '"' + minMinGenePercentCoVgThreshold + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{probeProbeSet}
  >>>
}