version 1.0

task BamGcVsQual.py {
  input {
    String? reference_fasta
    String? minimum_alignment_quality
    String? report_pdf_bamgcvsqualpdf
    String? tab_separated_file
    Boolean? quiet_show_bars
    String bam
  }
  command <<<
    bam_gc_vs_qual.py \
      ~{bam} \
      ~{if defined(reference_fasta) then ("-f " +  '"' + reference_fasta + '"') else ""} \
      ~{if defined(minimum_alignment_quality) then ("-q " +  '"' + minimum_alignment_quality + '"') else ""} \
      ~{if defined(report_pdf_bamgcvsqualpdf) then ("-r " +  '"' + report_pdf_bamgcvsqualpdf + '"') else ""} \
      ~{if defined(tab_separated_file) then ("-t " +  '"' + tab_separated_file + '"') else ""} \
      ~{true="-Q" false="" quiet_show_bars}
  >>>
  parameter_meta {
    reference_fasta: "Reference fasta."
    minimum_alignment_quality: "Minimum alignment quality (0)."
    report_pdf_bamgcvsqualpdf: "Report PDF (bam_gc_vs_qual.pdf)."
    tab_separated_file: "Tab separated file to save results (bam_gc_vs_qual.tsv)."
    quiet_show_bars: "Be quiet and do not show progress bars."
    bam: "Input BAM file."
  }
}