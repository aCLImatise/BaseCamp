version 1.0

task GappaExamineLwr {
  input {
    File? j_place_path
    Boolean? ignore_multiplicities
    Int? histogram_bins
    Int? num_lwrs
    File? no_list_file
    Boolean? no_compat_check
    Directory? out_dir
    File? file_prefix
    File? file_suffix
    Boolean? allow_file_overwriting
    Boolean? verbose
    Int? threads
    File? log_file
  }
  command <<<
    gappa examine lwr \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if (ignore_multiplicities) then "--ignore-multiplicities" else ""} \
      ~{if defined(histogram_bins) then ("--histogram-bins " +  '"' + histogram_bins + '"') else ""} \
      ~{if defined(num_lwrs) then ("--num-lwrs " +  '"' + num_lwrs + '"') else ""} \
      ~{if (no_list_file) then "--no-list-file" else ""} \
      ~{if (no_compat_check) then "--no-compat-check" else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(file_prefix) then ("--file-prefix " +  '"' + file_prefix + '"') else ""} \
      ~{if defined(file_suffix) then ("--file-suffix " +  '"' + file_suffix + '"') else ""} \
      ~{if (allow_file_overwriting) then "--allow-file-overwriting" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gappa:0.7.1--he513fc3_0"
  }
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED\\nList of jplace files or directories to process. For directories, only files with the extension `.jplace[.gz]` are processed."
    ignore_multiplicities: "Set the multiplicity of each pquery to 1."
    histogram_bins: "=25    Number of histogram bins for binning the LWR values."
    num_lwrs: "=5           Number of histograms to print. That is, how many of the LWRs per pquery to output (most likely, second most likely, etc), or in other words, how many LWRs columns the output table should have."
    no_list_file: "If set, do not write out the LWRs per pquery, but just the histogram file. As the list needs to keep all pquery names in memory (to get the correct order), the memory requirements might be too large. In that case, this option can help."
    no_compat_check: "If set, disables the check for tree compatibility. Useful if comparing results across differing reference trees."
    out_dir: "=.            Directory to write files to"
    file_prefix: "File prefix for output files"
    file_suffix: "File suffix for output files"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=1            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
  output {
    File out_stdout = stdout()
    File out_no_list_file = "${in_no_list_file}"
    File out_file_prefix = "${in_file_prefix}"
    File out_file_suffix = "${in_file_suffix}"
    File out_log_file = "${in_log_file}"
  }
}