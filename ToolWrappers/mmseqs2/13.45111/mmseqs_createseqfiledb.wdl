version 1.0

task MmseqsCreateseqfiledb {
  input {
    Int? min_sequences
    Int? max_sequences
    Boolean? hh_format
    Int? db_load_mode
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs createseqfiledb \
      ~{if defined(min_sequences) then ("--min-sequences " +  '"' + min_sequences + '"') else ""} \
      ~{if defined(max_sequences) then ("--max-sequences " +  '"' + max_sequences + '"') else ""} \
      ~{if defined(hh_format) then ("--hh-format " +  '"' + hh_format + '"') else ""} \
      ~{if defined(db_load_mode) then ("--db-load-mode " +  '"' + db_load_mode + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    min_sequences: "Minimum number of sequences a cluster may contain [1]"
    max_sequences: "Maximum number of sequences a cluster may contain [2147483647]"
    hh_format: "Format entries to use with hhsuite (for singleton clusters) [0]"
    db_load_mode: "Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}