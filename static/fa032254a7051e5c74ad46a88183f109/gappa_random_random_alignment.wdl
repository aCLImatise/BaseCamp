version 1.0

task GappaRandomRandomAlignment {
  input {
    String? sequence_count
    String? sequence_length
    String? characters
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
  }
  command <<<
    gappa random random-alignment \
      ~{if defined(sequence_count) then ("--sequence-count " +  '"' + sequence_count + '"') else ""} \
      ~{if defined(sequence_length) then ("--sequence-length " +  '"' + sequence_length + '"') else ""} \
      ~{if defined(characters) then ("--characters " +  '"' + characters + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    sequence_count: "=0 REQUIRED Number of sequences to create."
    sequence_length: "=0 REQUIRED Length of the sequences to create."
    characters: "=-ACGT     Set of characters to use for the sequences."
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}