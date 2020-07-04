version 1.0

task GappaEditMultiplicity {
  input {
    String? j_place_path
    String? multiplicity_file
    String? fast_a_path
    String? keep_full_label
    String? out_dir
    String? file_prefix
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
  }
  command <<<
    gappa edit multiplicity \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(multiplicity_file) then ("--multiplicity-file " +  '"' + multiplicity_file + '"') else ""} \
      ~{if defined(fast_a_path) then ("--fasta-path " +  '"' + fast_a_path + '"') else ""} \
      ~{if defined(keep_full_label) then ("--keep-full-label " +  '"' + keep_full_label + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(file_prefix) then ("--file-prefix " +  '"' + file_prefix + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED List of jplace files or directories to process. For directories, only files with the extension .jplace are processed."
    multiplicity_file: ":FILE Excludes: --fasta-path --write-multiplicity-file File containing a tab-separated list of [sample name,] query name, and multiplicity."
    fast_a_path: ":PATH(existing)=[] ... Excludes: --multiplicity-file --write-multiplicity-file List of fasta files or directories to process. For directories, only files with the extension .(fasta|fas|fsa|fna|ffn|faa|frn) are processed."
    keep_full_label: ": --fasta-path If fasta files are used, keep their whole label as the name for jplace pqueries, instead of removing the abundance annotation."
    out_dir: "=.            Directory to write files to"
    file_prefix: "File prefix for output files"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}