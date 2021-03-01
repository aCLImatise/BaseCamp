version 1.0

task ExploreThresholds {
  input {
    File? data_frame
    File? callable_bed
    File? vcf
    String? chrom
    Boolean? whole_genome_threshold
    Boolean? min_depth_filter
    Boolean? max_depth_filter
    Boolean? mapq_cut_off
    Int? variant_site_quality
    Int? variant_genotype_quality
    Int? variant_depth
    String? sample_id
    Boolean? plot_snp_distance
    String module
  }
  command <<<
    explore_thresholds \
      ~{module} \
      ~{if defined(data_frame) then ("--dataframe " +  '"' + data_frame + '"') else ""} \
      ~{if defined(callable_bed) then ("--callable_bed " +  '"' + callable_bed + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if (whole_genome_threshold) then "--whole_genome_threshold" else ""} \
      ~{if (min_depth_filter) then "--min_depth_filter" else ""} \
      ~{if (max_depth_filter) then "--max_depth_filter" else ""} \
      ~{if (mapq_cut_off) then "--mapq_cutoff" else ""} \
      ~{if defined(variant_site_quality) then ("--variant_site_quality " +  '"' + variant_site_quality + '"') else ""} \
      ~{if defined(variant_genotype_quality) then ("--variant_genotype_quality " +  '"' + variant_genotype_quality + '"') else ""} \
      ~{if defined(variant_depth) then ("--variant_depth " +  '"' + variant_depth + '"') else ""} \
      ~{if defined(sample_id) then ("--sample_id " +  '"' + sample_id + '"') else ""} \
      ~{if (plot_snp_distance) then "--plot_snp_distance" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data_frame: "Full path to csv output of pandas dataframe from\\nBAM_ANALYSIS module"
    callable_bed: "Full path to OPTIONAL external bed file with callable\\nregions. This script will plot based on filters only,\\ncallable sites only, and filters and callable sites\\ncombined. Default is 'None', which will plot based on\\nfilters only."
    vcf: "Full path to Platypus VCF output from BAM_ANALYSIS"
    chrom: "Name of chromosome to analyze. Default is 'ALL', which\\nwill analyze all chromosomes in dataframe together.\\nOtherwise, will only plot for chromosome listed."
    whole_genome_threshold: "If flag provided, use full dataset to calculate mean\\nfor filters. Otherwise, will calculate mean per\\nchromosome."
    min_depth_filter: "[MIN_DEPTH_FILTER [MIN_DEPTH_FILTER ...]]\\nMinimum depth threshold for a window to be considered\\nhigh quality. Calculated as mean depth *\\nmin_depth_filter. So, a min_depth_filter of 0.2 would\\nrequire at least a minimum depth of 2 if the mean\\ndepth was 10. Default is 0.0 to consider all windows."
    max_depth_filter: "[MAX_DEPTH_FILTER [MAX_DEPTH_FILTER ...]]\\nMaximum depth threshold for a window to be considered\\nhigh quality. Calculated as mean depth *\\nmax_depth_filter. So, a max_depth_filter of 4 would\\nrequire depths to be less than or equal to 40 if the\\nmean depth was 10. Default is 100000.0 to consider all\\nwindows."
    mapq_cut_off: "[MAPQ_CUTOFF [MAPQ_CUTOFF ...]]\\nMinimum mean mapq threshold for a window to be\\nconsidered high quality. Default is 20."
    variant_site_quality: "Consider all SNPs with a site quality (QUAL) greater\\nthan or equal to this value. Default is 30."
    variant_genotype_quality: "Consider all SNPs with a sample genotype quality\\ngreater than or equal to this value. Default is 30."
    variant_depth: "Consider all SNPs with a sample depth greater than or\\nequal to this value. Default is 4."
    sample_id: "Sample ID or other identifier to be used in naming"
    plot_snp_distance: "If True, will also plot a histogram of distances\\nbetween SNPs. Will only run on a single chromosome.\\nDefault is False.\\n"
    module: "--output_prefix OUTPUT_PREFIX"
  }
  output {
    File out_stdout = stdout()
    File out_data_frame = "${in_data_frame}"
    File out_vcf = "${in_vcf}"
  }
}