version 1.0

task GappaPrepareChunkify {
  input {
    String? fast_a_path
    String? chunk_size
    String? min_abundance
    String? hash_function
    String? chunks_out_dir
    String? chunk_file_prefix
    String? abundances_out_dir
    String? abundance_file_prefix
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
  }
  command <<<
    gappa prepare chunkify \
      ~{if defined(fast_a_path) then ("--fasta-path " +  '"' + fast_a_path + '"') else ""} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(min_abundance) then ("--min-abundance " +  '"' + min_abundance + '"') else ""} \
      ~{if defined(hash_function) then ("--hash-function " +  '"' + hash_function + '"') else ""} \
      ~{if defined(chunks_out_dir) then ("--chunks-out-dir " +  '"' + chunks_out_dir + '"') else ""} \
      ~{if defined(chunk_file_prefix) then ("--chunk-file-prefix " +  '"' + chunk_file_prefix + '"') else ""} \
      ~{if defined(abundances_out_dir) then ("--abundances-out-dir " +  '"' + abundances_out_dir + '"') else ""} \
      ~{if defined(abundance_file_prefix) then ("--abundance-file-prefix " +  '"' + abundance_file_prefix + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    fast_a_path: ":PATH(existing)=[] ... REQUIRED List of fasta files or directories to process. For directories, only files with the extension .(fasta|fas|fsa|fna|ffn|faa|frn) are processed."
    chunk_size: "=50000     Number of sequences per chunk file."
    min_abundance: "=1      Minimum abundance of a single sequence. Sequences below are filtered out."
    hash_function: ":{SHA1,SHA256,MD5}=SHA1 Hash function for re-naming and identifying sequences."
    chunks_out_dir: "=.     Directory to write chunks files to"
    chunk_file_prefix: "=chunk_ File prefix for chunk files"
    abundances_out_dir: "=. Directory to write abundances files to"
    abundance_file_prefix: "=abundances_ File prefix for abundance files"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}