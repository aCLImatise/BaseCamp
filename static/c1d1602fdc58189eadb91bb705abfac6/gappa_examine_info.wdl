version 1.0

task GappaExamineInfo {
  input {
    String? j_place_path
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
  }
  command <<<
    gappa examine info \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED List of jplace files or directories to process. For directories, only files with the extension .jplace are processed."
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}