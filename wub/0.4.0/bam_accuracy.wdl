version 1.0

task BamAccuracy.py {
  input {
    String? bam_region_none
    String? tab_separated_file_save_statistics
    String? tab_separated_file_save_none
    String? dataset_tag_bam
    String? minimum_alignment_quality
    Boolean? include_hard_clipps
    String? report_pdf_bamaccuracypdf
    String? save_pickled_results
    Boolean? quiet_print_bar
    String bam
  }
  command <<<
    bam_accuracy.py \
      ~{bam} \
      ~{if defined(bam_region_none) then ("-c " +  '"' + bam_region_none + '"') else ""} \
      ~{if defined(tab_separated_file_save_statistics) then ("-g " +  '"' + tab_separated_file_save_statistics + '"') else ""} \
      ~{if defined(tab_separated_file_save_none) then ("-l " +  '"' + tab_separated_file_save_none + '"') else ""} \
      ~{if defined(dataset_tag_bam) then ("-t " +  '"' + dataset_tag_bam + '"') else ""} \
      ~{if defined(minimum_alignment_quality) then ("-q " +  '"' + minimum_alignment_quality + '"') else ""} \
      ~{true="-e" false="" include_hard_clipps} \
      ~{if defined(report_pdf_bamaccuracypdf) then ("-r " +  '"' + report_pdf_bamaccuracypdf + '"') else ""} \
      ~{if defined(save_pickled_results) then ("-p " +  '"' + save_pickled_results + '"') else ""} \
      ~{true="-Q" false="" quiet_print_bar}
  >>>
  parameter_meta {
    bam_region_none: "BAM region (None)."
    tab_separated_file_save_statistics: "Tab separated file to save global statistics (None)."
    tab_separated_file_save_none: "Tab separated file to save per-read statistics (None)."
    dataset_tag_bam: "Dataset tag (BAM basename)."
    minimum_alignment_quality: "Minimum alignment quality (0)."
    include_hard_clipps: "Include hard and soft clipps in alignment length when calculating accuracy (False)."
    report_pdf_bamaccuracypdf: "Report PDF (bam_accuracy.pdf)."
    save_pickled_results: "Save pickled results in this file (None)."
    quiet_print_bar: "Be quiet and do not print progress bar (False)."
    bam: "Input BAM file."
  }
}