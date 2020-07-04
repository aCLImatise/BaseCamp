version 1.0

task MultiBamSummarySubcommands {
  input {
    String multi_bam_summary
  }
  command <<<
    multiBamSummary subcommands \
      ~{multi_bam_summary}
  >>>
  parameter_meta {
    multi_bam_summary: ""
  }
}