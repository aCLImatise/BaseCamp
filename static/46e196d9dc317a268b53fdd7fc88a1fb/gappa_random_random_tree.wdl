version 1.0

task GappaRandomRandomtree {
  input {
    Int? leaf_count
    Directory? out_dir
    File? file_prefix
    File? file_suffix
    Boolean? allow_file_overwriting
    Boolean? verbose
    Int? threads
    File? log_file
  }
  command <<<
    gappa random random_tree \
      ~{if defined(leaf_count) then ("--leaf-count " +  '"' + leaf_count + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(file_prefix) then ("--file-prefix " +  '"' + file_prefix + '"') else ""} \
      ~{if defined(file_suffix) then ("--file-suffix " +  '"' + file_suffix + '"') else ""} \
      ~{if (allow_file_overwriting) then "--allow-file-overwriting" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gappa:0.7.0--he513fc3_0"
  }
  parameter_meta {
    leaf_count: "=0 REQUIRED\\nNumber of leaf nodes (taxa) to create."
    out_dir: "=.            Directory to write files to"
    file_prefix: "File prefix for output files"
    file_suffix: "File suffix for output files"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
  output {
    File out_stdout = stdout()
    File out_file_prefix = "${in_file_prefix}"
    File out_file_suffix = "${in_file_suffix}"
    File out_log_file = "${in_log_file}"
  }
}