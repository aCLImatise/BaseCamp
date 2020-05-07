version 1.0

task CfsanSnpPipeline {
  input {
    String? subcommandSubcommand
  }
  command <<<
    cfsan_snp_pipeline \
      ~{subcommandSubcommand}
  >>>
}