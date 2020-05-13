version 1.0

task RtgHelpVcffilter {
  input {
    Boolean allAllSamples
    File bedBedRegions
    File inputInput
    File outputOutput
    String regionRegion
    String sampleSample
    Int densityDensityWindow
    File excludeExcludeBed
    File excludeExcludeVcf
    File includeIncludeBed
    File includeIncludeVcf
    String javascriptJavascript
    String keepKeepExpr
    String keepKeepFilter
    String keepKeepInfo
    Int maxMaxAlleles
    Int maxMaxCombinedReadDepth
    Float maxMaxQuality
    Int minMinAlleles
    Int minMinCombinedReadDepth
    Float minMinQuality
    String removeRemoveFilter
    String removeRemoveInfo
    Boolean removeRemoveOverlapping
    Float maxMaxAmbiguityRatio
    Float maxMaxAvrScore
    Float maxMaxDeNovoScore
    Float maxMaxGenotypeQuality
    Int maxMaxReadDepth
    Float minMinAvrScore
    Float minMinDeNovoScore
    Float minMinGenotypeQuality
    Int minMinReadDepth
    Boolean nonNonSnpsOnly
    Boolean removeRemoveAllSameAsRef
    Boolean removeRemoveHom
    Boolean removeRemoveSameAsRef
    Boolean snpsSnpsOnly
    Boolean clearClearFailedSamples
    String failFail
    String failFailSamples
    String addAddHeader
    Boolean noNoGzip
    Boolean noNoHeader
  }
  command <<<
    rtg help vcffilter \
      ~{true="--all-samples" false="" allAllSamples} \
      ~{if defined(bedBedRegions) then ("--bed-regions " +  '"' + bedBedRegions + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(densityDensityWindow) then ("--density-window " +  '"' + densityDensityWindow + '"') else ""} \
      ~{if defined(excludeExcludeBed) then ("--exclude-bed " +  '"' + excludeExcludeBed + '"') else ""} \
      ~{if defined(excludeExcludeVcf) then ("--exclude-vcf " +  '"' + excludeExcludeVcf + '"') else ""} \
      ~{if defined(includeIncludeBed) then ("--include-bed " +  '"' + includeIncludeBed + '"') else ""} \
      ~{if defined(includeIncludeVcf) then ("--include-vcf " +  '"' + includeIncludeVcf + '"') else ""} \
      ~{if defined(javascriptJavascript) then ("--javascript " +  '"' + javascriptJavascript + '"') else ""} \
      ~{if defined(keepKeepExpr) then ("--keep-expr " +  '"' + keepKeepExpr + '"') else ""} \
      ~{if defined(keepKeepFilter) then ("--keep-filter " +  '"' + keepKeepFilter + '"') else ""} \
      ~{if defined(keepKeepInfo) then ("--keep-info " +  '"' + keepKeepInfo + '"') else ""} \
      ~{if defined(maxMaxAlleles) then ("--max-alleles " +  '"' + maxMaxAlleles + '"') else ""} \
      ~{if defined(maxMaxCombinedReadDepth) then ("--max-combined-read-depth " +  '"' + maxMaxCombinedReadDepth + '"') else ""} \
      ~{if defined(maxMaxQuality) then ("--max-quality " +  '"' + maxMaxQuality + '"') else ""} \
      ~{if defined(minMinAlleles) then ("--min-alleles " +  '"' + minMinAlleles + '"') else ""} \
      ~{if defined(minMinCombinedReadDepth) then ("--min-combined-read-depth " +  '"' + minMinCombinedReadDepth + '"') else ""} \
      ~{if defined(minMinQuality) then ("--min-quality " +  '"' + minMinQuality + '"') else ""} \
      ~{if defined(removeRemoveFilter) then ("--remove-filter " +  '"' + removeRemoveFilter + '"') else ""} \
      ~{if defined(removeRemoveInfo) then ("--remove-info " +  '"' + removeRemoveInfo + '"') else ""} \
      ~{true="--remove-overlapping" false="" removeRemoveOverlapping} \
      ~{if defined(maxMaxAmbiguityRatio) then ("--max-ambiguity-ratio " +  '"' + maxMaxAmbiguityRatio + '"') else ""} \
      ~{if defined(maxMaxAvrScore) then ("--max-avr-score " +  '"' + maxMaxAvrScore + '"') else ""} \
      ~{if defined(maxMaxDeNovoScore) then ("--max-denovo-score " +  '"' + maxMaxDeNovoScore + '"') else ""} \
      ~{if defined(maxMaxGenotypeQuality) then ("--max-genotype-quality " +  '"' + maxMaxGenotypeQuality + '"') else ""} \
      ~{if defined(maxMaxReadDepth) then ("--max-read-depth " +  '"' + maxMaxReadDepth + '"') else ""} \
      ~{if defined(minMinAvrScore) then ("--min-avr-score " +  '"' + minMinAvrScore + '"') else ""} \
      ~{if defined(minMinDeNovoScore) then ("--min-denovo-score " +  '"' + minMinDeNovoScore + '"') else ""} \
      ~{if defined(minMinGenotypeQuality) then ("--min-genotype-quality " +  '"' + minMinGenotypeQuality + '"') else ""} \
      ~{if defined(minMinReadDepth) then ("--min-read-depth " +  '"' + minMinReadDepth + '"') else ""} \
      ~{true="--non-snps-only" false="" nonNonSnpsOnly} \
      ~{true="--remove-all-same-as-ref" false="" removeRemoveAllSameAsRef} \
      ~{true="--remove-hom" false="" removeRemoveHom} \
      ~{true="--remove-same-as-ref" false="" removeRemoveSameAsRef} \
      ~{true="--snps-only" false="" snpsSnpsOnly} \
      ~{true="--clear-failed-samples" false="" clearClearFailedSamples} \
      ~{if defined(failFail) then ("--fail " +  '"' + failFail + '"') else ""} \
      ~{if defined(failFailSamples) then ("--fail-samples " +  '"' + failFailSamples + '"') else ""} \
      ~{if defined(addAddHeader) then ("--add-header " +  '"' + addAddHeader + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip} \
      ~{true="--no-header" false="" noNoHeader}
  >>>
}