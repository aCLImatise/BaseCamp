version 1.0

task VariantFilter.py {
  input {
    Boolean fF
    Boolean qQ
    Boolean vV
    Int minMinCoverage
    String outlierOutlierThresh
    String sampleSampleFrac
    String outputOutputStub
    Boolean optimiseOptimiseP
    Boolean cogCogFilter
    String randomRandomSeed
    String? variantVariantFile
  }
  command <<<
    Variant_Filter.py \
      ~{variantVariantFile} \
      ~{true="-f" false="" fF} \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV} \
      ~{if defined(minMinCoverage) then ("--min_coverage " +  '"' + minMinCoverage + '"') else ""} \
      ~{if defined(outlierOutlierThresh) then ("--outlier_thresh " +  '"' + outlierOutlierThresh + '"') else ""} \
      ~{if defined(sampleSampleFrac) then ("--sample_frac " +  '"' + sampleSampleFrac + '"') else ""} \
      ~{if defined(outputOutputStub) then ("--output_stub " +  '"' + outputOutputStub + '"') else ""} \
      ~{true="--optimiseP" false="" optimiseOptimiseP} \
      ~{true="--cog_filter" false="" cogCogFilter} \
      ~{if defined(randomRandomSeed) then ("--random_seed " +  '"' + randomRandomSeed + '"') else ""}
  >>>
}