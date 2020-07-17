version 1.0

task GappaRandomRandomTree {
  input {
    String? leaf_count
    String? out_dir
    String? file_prefix
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
  }
  command <<<
    gappa random random-tree \
      ~{if defined(leaf_count) then ("--leaf-count " +  '"' + leaf_count + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(file_prefix) then ("--file-prefix " +  '"' + file_prefix + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    leaf_count: "=0 REQUIRED Number of leaf nodes (taxa) to create."
    out_dir: "=.            Directory to write files to"
    file_prefix: "File prefix for output files"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}