version 1.0

task BamAccuracypy {
  input {
    String? bam_region_none
    File? tab_separated_file_save_global_statistics
    File? tab_separated_file_save_perread_statistics
    String? dataset_tag_bam
    Int? minimum_alignment_quality
    Boolean? include_hard_clipps
    String? report_pdf_bamaccuracypdf
    File? save_pickled_results
    Boolean? be_quiet_print
  }
  command <<<
    bam_accuracy_py \
      ~{if defined(bam_region_none) then ("-c " +  '"' + bam_region_none + '"') else ""} \
      ~{if defined(tab_separated_file_save_global_statistics) then ("-g " +  '"' + tab_separated_file_save_global_statistics + '"') else ""} \
      ~{if defined(tab_separated_file_save_perread_statistics) then ("-l " +  '"' + tab_separated_file_save_perread_statistics + '"') else ""} \
      ~{if defined(dataset_tag_bam) then ("-t " +  '"' + dataset_tag_bam + '"') else ""} \
      ~{if defined(minimum_alignment_quality) then ("-q " +  '"' + minimum_alignment_quality + '"') else ""} \
      ~{if (include_hard_clipps) then "-e" else ""} \
      ~{if defined(report_pdf_bamaccuracypdf) then ("-r " +  '"' + report_pdf_bamaccuracypdf + '"') else ""} \
      ~{if defined(save_pickled_results) then ("-p " +  '"' + save_pickled_results + '"') else ""} \
      ~{if (be_quiet_print) then "-Q" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    bam_region_none: "BAM region (None)."
    tab_separated_file_save_global_statistics: "Tab separated file to save global statistics (None)."
    tab_separated_file_save_perread_statistics: "Tab separated file to save per-read statistics (None)."
    dataset_tag_bam: "Dataset tag (BAM basename)."
    minimum_alignment_quality: "Minimum alignment quality (0)."
    include_hard_clipps: "Include hard and soft clipps in alignment length when\\ncalculating accuracy (False)."
    report_pdf_bamaccuracypdf: "Report PDF (bam_accuracy.pdf)."
    save_pickled_results: "Save pickled results in this file (None)."
    be_quiet_print: "Be quiet and do not print progress bar (False)."
  }
  output {
    File out_stdout = stdout()
  }
}