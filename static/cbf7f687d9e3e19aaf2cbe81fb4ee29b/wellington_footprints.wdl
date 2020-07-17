version 1.0

task WellingtonFootprints.py {
  input {
    Boolean? bonferroni
    String? shoulder_sizes
    String? footprint_sizes
    Boolean? one_dimension
    String? fdr_cut_off
    String? fdr_iterations
    String? fdr_limit
    Array[String] pv_cutoffs
    Boolean? dont_merge_footprints
    String? output_prefix
    String? number_use_use
    Boolean? atacseq_mode_default
    String regions
    String reads
    String output_dir
  }
  command <<<
    wellington_footprints.py \
      ~{regions} \
      ~{reads} \
      ~{output_dir} \
      ~{true="--bonferroni" false="" bonferroni} \
      ~{if defined(shoulder_sizes) then ("--shoulder-sizes " +  '"' + shoulder_sizes + '"') else ""} \
      ~{if defined(footprint_sizes) then ("--footprint-sizes " +  '"' + footprint_sizes + '"') else ""} \
      ~{true="--one_dimension" false="" one_dimension} \
      ~{if defined(fdr_cut_off) then ("--FDR_cutoff " +  '"' + fdr_cut_off + '"') else ""} \
      ~{if defined(fdr_iterations) then ("--FDR_iterations " +  '"' + fdr_iterations + '"') else ""} \
      ~{if defined(fdr_limit) then ("--FDR_limit " +  '"' + fdr_limit + '"') else ""} \
      ~{if defined(pv_cutoffs) then ("--pv_cutoffs " +  '"' + pv_cutoffs + '"') else ""} \
      ~{true="--dont-merge-footprints" false="" dont_merge_footprints} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(number_use_use) then ("-p " +  '"' + number_use_use + '"') else ""} \
      ~{true="-A" false="" atacseq_mode_default}
  >>>
  parameter_meta {
    bonferroni: "Performs a bonferroni correction (default: False)"
    shoulder_sizes: "Range of shoulder sizes to try in format \"from,to,step\" (default: 35,36,1)"
    footprint_sizes: "Range of footprint sizes to try in format \"from,to,step\" (default: 11,26,2)"
    one_dimension: "Use Wellington 1D instead of Wellington (default: False)"
    fdr_cut_off: "Write footprints using the FDR selection method at a specific FDR (default: 0.01)"
    fdr_iterations: "How many randomisations to use when performing FDR calculations (default: 100)"
    fdr_limit: "Minimum p-value to be considered significant for FDR calculation (default: -20)"
    pv_cutoffs: "(Provide multiple values separated by spaces) Select footprints using a range of pvalue cutoffs (default: -10 -20 -30 -40 -50 -75 -100 -300 -500 -700"
    dont_merge_footprints: "Disables merging of overlapping footprints (Default: False)"
    output_prefix: "The prefix for results files (default: <reads.regions>)"
    number_use_use: "Number of processes to use, use 0 to use all cores (default: 1)"
    atacseq_mode_default: "ATAC-seq mode (default: False)"
    regions: "BED file of the regions you want to footprint"
    reads: "The BAM file containing the DNase-seq reads"
    output_dir: "A writeable directory to write the results to"
  }
}