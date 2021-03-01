version 1.0

task BamAlignmentQcpy {
  input {
    String? reference_fasta
    String? bam_region_none
    Int? left_right_sizes
    Boolean? plot_perreference_information
    String? dataset_tag_bam
    Int? minimum_alignment_quality
    Int? number_quality_intervals
    String? report_pdf_bamalignmentqcpdf
    File? save_pickled_results
    Boolean? be_quiet_show
  }
  command <<<
    bam_alignment_qc_py \
      ~{if defined(reference_fasta) then ("-f " +  '"' + reference_fasta + '"') else ""} \
      ~{if defined(bam_region_none) then ("-c " +  '"' + bam_region_none + '"') else ""} \
      ~{if defined(left_right_sizes) then ("-n " +  '"' + left_right_sizes + '"') else ""} \
      ~{if (plot_perreference_information) then "-x" else ""} \
      ~{if defined(dataset_tag_bam) then ("-t " +  '"' + dataset_tag_bam + '"') else ""} \
      ~{if defined(minimum_alignment_quality) then ("-q " +  '"' + minimum_alignment_quality + '"') else ""} \
      ~{if defined(number_quality_intervals) then ("-i " +  '"' + number_quality_intervals + '"') else ""} \
      ~{if defined(report_pdf_bamalignmentqcpdf) then ("-r " +  '"' + report_pdf_bamalignmentqcpdf + '"') else ""} \
      ~{if defined(save_pickled_results) then ("-p " +  '"' + save_pickled_results + '"') else ""} \
      ~{if (be_quiet_show) then "-Q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_fasta: "Reference fasta."
    bam_region_none: "BAM region (None)."
    left_right_sizes: "Left and right context sizes (1,1)."
    plot_perreference_information: "Do not plot per-reference information."
    dataset_tag_bam: "Dataset tag (BAM basename)."
    minimum_alignment_quality: "Minimum alignment quality (0)."
    number_quality_intervals: "Number of quality intervals (6)."
    report_pdf_bamalignmentqcpdf: "Report PDF (bam_alignment_qc.pdf)."
    save_pickled_results: "Save pickled results in this file (bam_alignment_qc.pk)."
    be_quiet_show: "Be quiet and do not show progress bars."
  }
  output {
    File out_stdout = stdout()
  }
}