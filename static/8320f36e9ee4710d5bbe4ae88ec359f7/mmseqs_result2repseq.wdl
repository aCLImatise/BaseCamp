version 1.0

task MmseqsResult2repseq {
  input {
    Int? db_load_mode
    Int? compressed
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs result2repseq \
      ~{if defined(db_load_mode) then ("--db-load-mode " +  '"' + db_load_mode + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    db_load_mode: "Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]"
    compressed: "Write compressed output [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}