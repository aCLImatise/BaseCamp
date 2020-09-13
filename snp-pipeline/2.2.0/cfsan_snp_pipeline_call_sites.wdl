version 1.0

task CfsanSnpPipelineCallSites {
  input {
    Boolean? force
    Int? verbose
    String reference_file
    String sample_dir
  }
  command <<<
    cfsan_snp_pipeline call_sites \
      ~{reference_file} \
      ~{sample_dir} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result files already exist\\nand are newer than inputs (default: False)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    reference_file: "Relative or absolute path to the reference fasta file"
    sample_dir: "Relative or absolute directory of the sample"
  }
  output {
    File out_stdout = stdout()
  }
}