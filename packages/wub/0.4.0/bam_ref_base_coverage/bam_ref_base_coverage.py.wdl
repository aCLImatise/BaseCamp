version 1.0

task BamRefBaseCoveragepy {
  input {
    String? reference_fasta
    String? bam_region_none
    File? output_tab_separated
    Int? minimum_base_coverage
    Boolean? quiet_show_bars
  }
  command <<<
    bam_ref_base_coverage_py \
      ~{if defined(reference_fasta) then ("-f " +  '"' + reference_fasta + '"') else ""} \
      ~{if defined(bam_region_none) then ("-c " +  '"' + bam_region_none + '"') else ""} \
      ~{if defined(output_tab_separated) then ("-t " +  '"' + output_tab_separated + '"') else ""} \
      ~{if defined(minimum_base_coverage) then ("-m " +  '"' + minimum_base_coverage + '"') else ""} \
      ~{if (quiet_show_bars) then "-Q" else ""}
  >>>
  parameter_meta {
    reference_fasta: "Reference fasta."
    bam_region_none: "BAM region (None)."
    output_tab_separated: "Output tab separated file (bam_ref_base_coverage.tsv)."
    minimum_base_coverage: "Minimum base coverage for a position to be counted (1)."
    quiet_show_bars: "Be quiet and do not show progress bars."
  }
  output {
    File out_stdout = stdout()
    File out_output_tab_separated = "${in_output_tab_separated}"
  }
}