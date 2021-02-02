version 1.0

task CfsanSnpPipelineIndexRef {
  input {
    Boolean? force
    Int? verbose
  }
  command <<<
    cfsan_snp_pipeline index_ref \
      ~{if (force) then "--force" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result files already exist\\nand are newer than inputs (default: False)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
  }
  output {
    File out_stdout = stdout()
  }
}