version 1.0

task GappaPrepareUnchunkify {
  input {
    String? j_place_cache_size
    String? hash_function
    String? out_dir
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
  }
  command <<<
    gappa prepare unchunkify \
      ~{if defined(j_place_cache_size) then ("--jplace-cache-size " +  '"' + j_place_cache_size + '"') else ""} \
      ~{if defined(hash_function) then ("--hash-function " +  '"' + hash_function + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    j_place_cache_size: "=0  Cache size to determine how many jplace files are kept in memory. Default (0) means all. Use this if the command runs out of memory. It however comes at the cost of longer runtime."
    hash_function: ":{SHA1,SHA256,MD5}=SHA1 Hash function that was used for re-naming and identifying sequences in the chunkify command."
    out_dir: "=.            Directory to write files to"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}