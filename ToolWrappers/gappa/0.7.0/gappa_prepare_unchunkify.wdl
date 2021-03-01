version 1.0

task GappaPrepareUnchunkify {
  input {
    File? abundances_path
    File? j_place_path
    File? chunk_list_file
    File? chunk_file_expression
    Int? j_place_cache_size
    Int? hash_function
    Directory? out_dir
    File? file_prefix
    File? file_suffix
    Boolean? allow_file_overwriting
    Boolean? verbose
    Int? threads
    File? log_file
  }
  command <<<
    gappa prepare unchunkify \
      ~{if defined(abundances_path) then ("--abundances-path " +  '"' + abundances_path + '"') else ""} \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(chunk_list_file) then ("--chunk-list-file " +  '"' + chunk_list_file + '"') else ""} \
      ~{if defined(chunk_file_expression) then ("--chunk-file-expression " +  '"' + chunk_file_expression + '"') else ""} \
      ~{if defined(j_place_cache_size) then ("--jplace-cache-size " +  '"' + j_place_cache_size + '"') else ""} \
      ~{if defined(hash_function) then ("--hash-function " +  '"' + hash_function + '"') else ""} \
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
    abundances_path: ":PATH(existing)=[] ... REQUIRED\\nList of abundances files or directories to process. For directories, only files with the extension `.json[.gz]` are processed."
    j_place_path: ":PATH(existing)=[] ... Excludes: --chunk-list-file --chunk-file-expression\\nList of jplace files or directories to process. For directories, only files with the extension `.jplace[.gz]` are processed."
    chunk_list_file: "Excludes: --jplace-path --chunk-file-expression\\nIf provided, needs to contain a list of chunk file paths in the numerical order that was produced by the chunkify command."
    chunk_file_expression: "Excludes: --jplace-path --chunk-list-file\\nIf provided, the expression is used to load jplace files by replacing any '@' character with the chunk number."
    j_place_cache_size: "=0  Cache size to determine how many jplace files are kept in memory. Default (0) means all. Use this if the command runs out of memory. It however comes at the cost of longer runtime."
    hash_function: ":{SHA1,SHA256,MD5}=SHA1\\nHash function that was used for re-naming and identifying sequences in the chunkify command."
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