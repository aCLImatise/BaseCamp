version 1.0

task GappaExamineEdpl {
  input {
    File? j_place_path
    Int? histogram_bins
    Float? histogram_max
    File? no_list_file
    Directory? out_dir
    File? file_prefix
    File? file_suffix
    Boolean? allow_file_overwriting
    Boolean? verbose
    Int? threads
    File? log_file
  }
  command <<<
    gappa examine edpl \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(histogram_bins) then ("--histogram-bins " +  '"' + histogram_bins + '"') else ""} \
      ~{if defined(histogram_max) then ("--histogram-max " +  '"' + histogram_max + '"') else ""} \
      ~{if (no_list_file) then "--no-list-file" else ""} \
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
    histogram_bins: "=25    Number of histogram bins for binning the EDPL values."
    histogram_max: "=-1    Maximum value to use in the histogram for binning the EDPL values. To use the maximal EDPL found in the samples, use a negative value (default)."
    no_list_file: "If set, do not write out the EDPL per pquery, but just the histogram file. As the list needs to keep all pquery names in memory (to get the correct order), the memory requirements might be too large. In that case, this option can help."
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