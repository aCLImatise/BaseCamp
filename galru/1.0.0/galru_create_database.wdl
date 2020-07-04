version 1.0

task GalruCreateDatabase {
  input {
    String? threads
    Boolean? allow_missing_st
    Boolean? debug
    Boolean? verbose
    String output_directory
    String input_files
  }
  command <<<
    galru_create_database \
      ~{output_directory} \
      ~{input_files} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--allow_missing_st" false="" allow_missing_st} \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    threads: "No. of threads to use (default: 1)"
    allow_missing_st: "Use files with missing ST [False]"
    debug: "Turn on debugging and save intermediate files (default: False)"
    verbose: "Turn on verbose output (default: False)"
    output_directory: "Output directory"
    input_files: "Input FASTA files (optionally gzipped)"
  }
}