version 1.0

task GappaRandomRandomalignment {
  input {
    Int? sequence_count
    Int? sequence_length
    String? characters
    Directory? out_dir
    File? file_prefix
    File? file_suffix
    Boolean? write_fast_a
    File? write_strict_phylip
    File? write_relaxed_phylip
    Boolean? allow_file_overwriting
    Boolean? verbose
    Int? threads
    File? log_file
  }
  command <<<
    gappa random random_alignment \
      ~{if defined(sequence_count) then ("--sequence-count " +  '"' + sequence_count + '"') else ""} \
      ~{if defined(sequence_length) then ("--sequence-length " +  '"' + sequence_length + '"') else ""} \
      ~{if defined(characters) then ("--characters " +  '"' + characters + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(file_prefix) then ("--file-prefix " +  '"' + file_prefix + '"') else ""} \
      ~{if defined(file_suffix) then ("--file-suffix " +  '"' + file_suffix + '"') else ""} \
      ~{if (write_fast_a) then "--write-fasta" else ""} \
      ~{if defined(write_strict_phylip) then ("--write-strict-phylip " +  '"' + write_strict_phylip + '"') else ""} \
      ~{if defined(write_relaxed_phylip) then ("--write-relaxed-phylip " +  '"' + write_relaxed_phylip + '"') else ""} \
      ~{if (allow_file_overwriting) then "--allow-file-overwriting" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gappa:0.7.1--he513fc3_0"
  }
  parameter_meta {
    sequence_count: "=0 REQUIRED\\nNumber of sequences to create."
    sequence_length: "=0 REQUIRED\\nLength of the sequences to create."
    characters: "=-ACGT     Set of characters to use for the sequences."
    out_dir: "=.            Directory to write files to"
    file_prefix: "File prefix for output files"
    file_suffix: "File suffix for output files"
    write_fast_a: "Write sequences to a fasta file."
    write_strict_phylip: ": --write-relaxed-phylip\\nWrite sequences to a strict phylip file."
    write_relaxed_phylip: ": --write-strict-phylip\\nWrite sequences to a relaxed phylip file."
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=1            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
  output {
    File out_stdout = stdout()
    File out_file_prefix = "${in_file_prefix}"
    File out_file_suffix = "${in_file_suffix}"
    File out_log_file = "${in_log_file}"
  }
}