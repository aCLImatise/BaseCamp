version 1.0

task ExploreThresholds {
  input {
    String? data_frame
    String? callable_bed
    String? vcf
    String? output_prefix
    String? chrom
    Boolean? whole_genome_threshold
    Boolean? min_depth_filter
    Boolean? max_depth_filter
    Boolean? mapq_cut_off
    String? variant_site_quality
    String? variant_genotype_quality
    String? variant_depth
    String? sample_id
    Boolean? plot_snp_distance
  }
  command <<<
    explore_thresholds \
      ~{if defined(data_frame) then ("--dataframe " +  '"' + data_frame + '"') else ""} \
      ~{if defined(callable_bed) then ("--callable_bed " +  '"' + callable_bed + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{true="--whole_genome_threshold" false="" whole_genome_threshold} \
      ~{true="--min_depth_filter" false="" min_depth_filter} \
      ~{true="--max_depth_filter" false="" max_depth_filter} \
      ~{true="--mapq_cutoff" false="" mapq_cut_off} \
      ~{if defined(variant_site_quality) then ("--variant_site_quality " +  '"' + variant_site_quality + '"') else ""} \
      ~{if defined(variant_genotype_quality) then ("--variant_genotype_quality " +  '"' + variant_genotype_quality + '"') else ""} \
      ~{if defined(variant_depth) then ("--variant_depth " +  '"' + variant_depth + '"') else ""} \
      ~{if defined(sample_id) then ("--sample_id " +  '"' + sample_id + '"') else ""} \
      ~{true="--plot_snp_distance" false="" plot_snp_distance}
  >>>
  parameter_meta {
    data_frame: "Full path to csv output of pandas dataframe from BAM_ANALYSIS module"
    callable_bed: "Full path to OPTIONAL external bed file with callable regions. This script will plot based on filters only, callable sites only, and filters and callable sites combined. Default is 'None', which will plot based on filters only."
    vcf: "Full path to Platypus VCF output from BAM_ANALYSIS module"
    output_prefix: "Full path to and prefix of output files."
    chrom: "Name of chromosome to analyze. Default is 'ALL', which will analyze all chromosomes in dataframe together. Otherwise, will only plot for chromosome listed."
    whole_genome_threshold: "If flag provided, use full dataset to calculate mean for filters. Otherwise, will calculate mean per chromosome."
    min_depth_filter: "[MIN_DEPTH_FILTER [MIN_DEPTH_FILTER ...]] Minimum depth threshold for a window to be considered high quality. Calculated as mean depth * min_depth_filter. So, a min_depth_filter of 0.2 would require at least a minimum depth of 2 if the mean depth was 10. Default is 0.0 to consider all windows."
    max_depth_filter: "[MAX_DEPTH_FILTER [MAX_DEPTH_FILTER ...]] Maximum depth threshold for a window to be considered high quality. Calculated as mean depth * max_depth_filter. So, a max_depth_filter of 4 would require depths to be less than or equal to 40 if the mean depth was 10. Default is 100000.0 to consider all windows."
    mapq_cut_off: "[MAPQ_CUTOFF [MAPQ_CUTOFF ...]] Minimum mean mapq threshold for a window to be considered high quality. Default is 20."
    variant_site_quality: "Consider all SNPs with a site quality (QUAL) greater than or equal to this value. Default is 30."
    variant_genotype_quality: "Consider all SNPs with a sample genotype quality greater than or equal to this value. Default is 30."
    variant_depth: "Consider all SNPs with a sample depth greater than or equal to this value. Default is 4."
    sample_id: "Sample ID or other identifier to be used in naming"
    plot_snp_distance: "If True, will also plot a histogram of distances between SNPs. Will only run on a single chromosome. Default is False."
  }
}