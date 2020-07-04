version 1.0

task GappaExamineEdpl {
  input {
    String? j_place_path
    String? histogram_bins
    Float? histogram_max
    Boolean? no_list_file
    String? out_dir
    String? file_prefix
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
  }
  command <<<
    gappa examine edpl \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(histogram_bins) then ("--histogram-bins " +  '"' + histogram_bins + '"') else ""} \
      ~{if defined(histogram_max) then ("--histogram-max " +  '"' + histogram_max + '"') else ""} \
      ~{true="--no-list-file" false="" no_list_file} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(file_prefix) then ("--file-prefix " +  '"' + file_prefix + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED List of jplace files or directories to process. For directories, only files with the extension .jplace are processed."
    histogram_bins: "=25    Number of histogram bins for binning the EDPL values."
    histogram_max: "=-1    Maximum value to use in the histogram for binning the EDPL values. To use the maximal EDPL found in the samples, use a negative value (default)."
    no_list_file: "If set, do not write out the EDPL per pquery, but just the histogram file. As the list needs to keep all pquery names in memory (to get the correct order), the memory requirements might be too large. In that case, this option can help."
    out_dir: "=.            Directory to write files to"
    file_prefix: "=edpl_    File prefix for output files"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}