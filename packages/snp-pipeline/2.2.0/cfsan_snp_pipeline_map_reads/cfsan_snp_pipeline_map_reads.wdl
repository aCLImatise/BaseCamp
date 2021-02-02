version 1.0

task CfsanSnpPipelineMapReads {
  input {
    Boolean? force
    Int? verbose
    Int? threads
    String reference_file
    Int sample_fast_q_file_one
    Int sample_fast_q_file_two
  }
  command <<<
    cfsan_snp_pipeline map_reads \
      ~{reference_file} \
      ~{sample_fast_q_file_one} \
      ~{sample_fast_q_file_two} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    force: "Force processing even when result files already exist\\nand are newer than inputs (default: False)"
    verbose: "Verbose message level (0=no info, 5=lots) (default: 1)"
    threads: "Number of CPU cores to use (default: 8)"
    reference_file: "Relative or absolute path to the reference fasta file"
    sample_fast_q_file_one: "Relative or absolute path to the fastq file"
    sample_fast_q_file_two: "Optional relative or absolute path to the mate fastq\\nfile, if paired (default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}