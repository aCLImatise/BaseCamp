version 1.0

task ExploreThresholds {
  input {
    String dataDataFrame
    String callableCallableBed
    String vcfVcf
    String outputOutputPrefix
    String chromChrom
    Boolean wholeWholeGenomeThreshold
    Boolean minMinDepthFilter
    Boolean maxMaxDepthFilter
    Boolean mapqMapqCutOff
    String variantVariantSiteQuality
    String variantVariantGenotypeQuality
    String variantVariantDepth
    String sampleSampleId
    Boolean plotPlotSnpDistance
  }
  command <<<
    explore_thresholds \
      ~{if defined(dataDataFrame) then ("--dataframe " +  '"' + dataDataFrame + '"') else ""} \
      ~{if defined(callableCallableBed) then ("--callable_bed " +  '"' + callableCallableBed + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{true="--whole_genome_threshold" false="" wholeWholeGenomeThreshold} \
      ~{true="--min_depth_filter" false="" minMinDepthFilter} \
      ~{true="--max_depth_filter" false="" maxMaxDepthFilter} \
      ~{true="--mapq_cutoff" false="" mapqMapqCutOff} \
      ~{if defined(variantVariantSiteQuality) then ("--variant_site_quality " +  '"' + variantVariantSiteQuality + '"') else ""} \
      ~{if defined(variantVariantGenotypeQuality) then ("--variant_genotype_quality " +  '"' + variantVariantGenotypeQuality + '"') else ""} \
      ~{if defined(variantVariantDepth) then ("--variant_depth " +  '"' + variantVariantDepth + '"') else ""} \
      ~{if defined(sampleSampleId) then ("--sample_id " +  '"' + sampleSampleId + '"') else ""} \
      ~{true="--plot_snp_distance" false="" plotPlotSnpDistance}
  >>>
}