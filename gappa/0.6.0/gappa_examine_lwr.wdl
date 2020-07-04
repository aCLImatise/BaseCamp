version 1.0

task GappaExamineLwr {
  input {
    String? j_place_path
    Boolean? ignore_multiplicities
    String? histogram_bins
    String? num_lwrs
    Boolean? no_list_file
    String? out_dir
    String? file_prefix
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
  }
  command <<<
    gappa examine lwr \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{true="--ignore-multiplicities" false="" ignore_multiplicities} \
      ~{if defined(histogram_bins) then ("--histogram-bins " +  '"' + histogram_bins + '"') else ""} \
      ~{if defined(num_lwrs) then ("--num-lwrs " +  '"' + num_lwrs + '"') else ""} \
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
    ignore_multiplicities: "Set the multiplicity of each pquery to 1."
    histogram_bins: "=25    Number of histogram bins for binning the LWR values."
    num_lwrs: "=5           Number of histograms to print. That is, how many of the LWRs per pquery to output (most likely, second most likely, etc), or in other words, how many LWRs columns the output table should have."
    no_list_file: "If set, do not write out the LWRs per pquery, but just the histogram file. As the list needs to keep all pquery names in memory (to get the correct order), the memory requirements might be too large. In that case, this option can help."
    out_dir: "=.            Directory to write files to"
    file_prefix: "=lwr_     File prefix for output files"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}