version 1.0

task BamCovpy {
  input {
    String? reference_fasta
    String? bam_region_none
    String? output_tsv_bamcovtsv
    Int? minimum_alignment_quality
    Boolean? quiet_show_bars
    String bam
  }
  command <<<
    bam_cov_py \
      ~{bam} \
      ~{if defined(reference_fasta) then ("-f " +  '"' + reference_fasta + '"') else ""} \
      ~{if defined(bam_region_none) then ("-c " +  '"' + bam_region_none + '"') else ""} \
      ~{if defined(output_tsv_bamcovtsv) then ("-t " +  '"' + output_tsv_bamcovtsv + '"') else ""} \
      ~{if defined(minimum_alignment_quality) then ("-q " +  '"' + minimum_alignment_quality + '"') else ""} \
      ~{if (quiet_show_bars) then "-Q" else ""}
  >>>
  parameter_meta {
    reference_fasta: "Reference fasta."
    bam_region_none: "BAM region (None)."
    output_tsv_bamcovtsv: "Output TSV (bam_cov.tsv)."
    minimum_alignment_quality: "Minimum alignment quality (0)."
    quiet_show_bars: "Be quiet and do not show progress bars."
    bam: "Input BAM file."
  }
  output {
    File out_stdout = stdout()
  }
}