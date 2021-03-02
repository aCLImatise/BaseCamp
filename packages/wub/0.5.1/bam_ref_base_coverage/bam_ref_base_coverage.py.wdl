version 1.0

task BamRefBaseCoveragepy {
  input {
    String? reference_fasta
    String? bam_region_none
    File? output_tab_file
    Int? minimum_base_coverage
    Boolean? be_quiet_show
  }
  command <<<
    bam_ref_base_coverage_py \
      ~{if defined(reference_fasta) then ("-f " +  '"' + reference_fasta + '"') else ""} \
      ~{if defined(bam_region_none) then ("-c " +  '"' + bam_region_none + '"') else ""} \
      ~{if defined(output_tab_file) then ("-t " +  '"' + output_tab_file + '"') else ""} \
      ~{if defined(minimum_base_coverage) then ("-m " +  '"' + minimum_base_coverage + '"') else ""} \
      ~{if (be_quiet_show) then "-Q" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    reference_fasta: "Reference fasta."
    bam_region_none: "BAM region (None)."
    output_tab_file: "Output tab separated file (bam_ref_base_coverage.tsv)."
    minimum_base_coverage: "Minimum base coverage for a position to be counted (1)."
    be_quiet_show: "Be quiet and do not show progress bars."
  }
  output {
    File out_stdout = stdout()
    File out_output_tab_file = "${in_output_tab_file}"
  }
}