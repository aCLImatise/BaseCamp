version 1.0

task GappaPrepareChunkify {
  input {
    File? fast_a_path
    Int? chunk_size
    Int? min_abundance
    Int? hash_function
    Directory? chunks_out_dir
    File? chunks_file_prefix
    File? chunks_file_suffix
    Directory? abundances_out_dir
    File? abundances_file_prefix
    File? abundances_file_suffix
    Boolean? allow_file_overwriting
    Boolean? verbose
    Int? threads
    File? log_file
  }
  command <<<
    gappa prepare chunkify \
      ~{if defined(fast_a_path) then ("--fasta-path " +  '"' + fast_a_path + '"') else ""} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(min_abundance) then ("--min-abundance " +  '"' + min_abundance + '"') else ""} \
      ~{if defined(hash_function) then ("--hash-function " +  '"' + hash_function + '"') else ""} \
      ~{if defined(chunks_out_dir) then ("--chunks-out-dir " +  '"' + chunks_out_dir + '"') else ""} \
      ~{if defined(chunks_file_prefix) then ("--chunks-file-prefix " +  '"' + chunks_file_prefix + '"') else ""} \
      ~{if defined(chunks_file_suffix) then ("--chunks-file-suffix " +  '"' + chunks_file_suffix + '"') else ""} \
      ~{if defined(abundances_out_dir) then ("--abundances-out-dir " +  '"' + abundances_out_dir + '"') else ""} \
      ~{if defined(abundances_file_prefix) then ("--abundances-file-prefix " +  '"' + abundances_file_prefix + '"') else ""} \
      ~{if defined(abundances_file_suffix) then ("--abundances-file-suffix " +  '"' + abundances_file_suffix + '"') else ""} \
      ~{if (allow_file_overwriting) then "--allow-file-overwriting" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gappa:0.7.1--he513fc3_0"
  }
  parameter_meta {
    fast_a_path: ":PATH(existing)=[] ... REQUIRED\\nList of fasta files or directories to process. For directories, only files with the extension `.(fasta|fas|fsa|fna|ffn|faa|frn)[.gz]` are processed."
    chunk_size: "=50000     Number of sequences per chunk file."
    min_abundance: "=1      Minimum abundance of a single sequence. Sequences below are filtered out."
    hash_function: ":{SHA1,SHA256,MD5}=SHA1\\nHash function for re-naming and identifying sequences."
    chunks_out_dir: "=.     Directory to write chunks files to"
    chunks_file_prefix: "File prefix for chunks files"
    chunks_file_suffix: "File suffix for chunks files"
    abundances_out_dir: "=. Directory to write abundances files to"
    abundances_file_prefix: "File prefix for abundances files"
    abundances_file_suffix: "File suffix for abundances files"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=1            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}