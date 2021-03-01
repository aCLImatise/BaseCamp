version 1.0

task BamGcVsQualpy {
  input {
    String? reference_fasta
    Int? minimum_alignment_quality
    String? report_pdf_bamgcvsqualpdf
    File? tab_separated_file
    Boolean? be_quiet_show
  }
  command <<<
    bam_gc_vs_qual_py \
      ~{if defined(reference_fasta) then ("-f " +  '"' + reference_fasta + '"') else ""} \
      ~{if defined(minimum_alignment_quality) then ("-q " +  '"' + minimum_alignment_quality + '"') else ""} \
      ~{if defined(report_pdf_bamgcvsqualpdf) then ("-r " +  '"' + report_pdf_bamgcvsqualpdf + '"') else ""} \
      ~{if defined(tab_separated_file) then ("-t " +  '"' + tab_separated_file + '"') else ""} \
      ~{if (be_quiet_show) then "-Q" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    reference_fasta: "Reference fasta."
    minimum_alignment_quality: "Minimum alignment quality (0)."
    report_pdf_bamgcvsqualpdf: "Report PDF (bam_gc_vs_qual.pdf)."
    tab_separated_file: "Tab separated file to save results (bam_gc_vs_qual.tsv)."
    be_quiet_show: "Be quiet and do not show progress bars."
  }
  output {
    File out_stdout = stdout()
  }
}