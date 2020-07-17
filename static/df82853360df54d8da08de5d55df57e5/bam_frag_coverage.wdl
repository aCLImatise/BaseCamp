version 1.0

task BamFragCoverage.py {
  input {
    String? reference_fasta
    String? bam_region_none
    Int? length_intervals_
    String? number_none_auto
    Boolean? plot_perreference_information
    Boolean? take_log_coverage
    String? dataset_tag_bam
    String? minimum_alignment_quality
    String? tab_separated_file_perchromosome
    String? tab_separated_file_global
    String? report_pdf_bamfragcoveragepdf
    String? save_pickled_results
    Boolean? quiet_show_bars
    String bam
  }
  command <<<
    bam_frag_coverage.py \
      ~{bam} \
      ~{if defined(reference_fasta) then ("-f " +  '"' + reference_fasta + '"') else ""} \
      ~{if defined(bam_region_none) then ("-c " +  '"' + bam_region_none + '"') else ""} \
      ~{if defined(length_intervals_) then ("-i " +  '"' + length_intervals_ + '"') else ""} \
      ~{if defined(number_none_auto) then ("-b " +  '"' + number_none_auto + '"') else ""} \
      ~{true="-x" false="" plot_perreference_information} \
      ~{true="-o" false="" take_log_coverage} \
      ~{if defined(dataset_tag_bam) then ("-t " +  '"' + dataset_tag_bam + '"') else ""} \
      ~{if defined(minimum_alignment_quality) then ("-q " +  '"' + minimum_alignment_quality + '"') else ""} \
      ~{if defined(tab_separated_file_perchromosome) then ("-l " +  '"' + tab_separated_file_perchromosome + '"') else ""} \
      ~{if defined(tab_separated_file_global) then ("-g " +  '"' + tab_separated_file_global + '"') else ""} \
      ~{if defined(report_pdf_bamfragcoveragepdf) then ("-r " +  '"' + report_pdf_bamfragcoveragepdf + '"') else ""} \
      ~{if defined(save_pickled_results) then ("-p " +  '"' + save_pickled_results + '"') else ""} \
      ~{true="-Q" false="" quiet_show_bars}
  >>>
  parameter_meta {
    reference_fasta: "Reference fasta."
    bam_region_none: "BAM region (None)."
    length_intervals_: "Length intervals ()."
    number_none_auto: "Number of bins (None = auto)."
    plot_perreference_information: "Plot per-reference information."
    take_log_coverage: "Do not take log of coverage."
    dataset_tag_bam: "Dataset tag (BAM basename)."
    minimum_alignment_quality: "Minimum alignment quality (0)."
    tab_separated_file_perchromosome: "Tab separated file with per-chromosome cov80 scores (None). Requires the -x option to be specified."
    tab_separated_file_global: "Tab separated file with global cov80 score (None)."
    report_pdf_bamfragcoveragepdf: "Report PDF (bam_frag_coverage.pdf)."
    save_pickled_results: "Save pickled results in this file (None)."
    quiet_show_bars: "Be quiet and do not show progress bars."
    bam: "Input BAM file."
  }
}