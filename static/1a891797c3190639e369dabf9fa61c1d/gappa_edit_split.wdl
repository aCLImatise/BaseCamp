version 1.0

task GappaEditSplit {
  input {
    String? j_place_path
    String? split_file
    String? otu_table_file
    String? out_dir
    String? file_prefix
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
  }
  command <<<
    gappa edit split \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(split_file) then ("--split-file " +  '"' + split_file + '"') else ""} \
      ~{if defined(otu_table_file) then ("--otu-table-file " +  '"' + otu_table_file + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(file_prefix) then ("--file-prefix " +  '"' + file_prefix + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED List of jplace files or directories to process. For directories, only files with the extension .jplace are processed."
    split_file: ":FILE Excludes: --otu-table-file File containing a comma-separated mapping of query names to sample names."
    otu_table_file: ":FILE Excludes: --split-file File containing a tab-separated OTU table."
    out_dir: "=.            Directory to write files to"
    file_prefix: "File prefix for output files"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}