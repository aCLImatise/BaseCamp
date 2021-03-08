version 1.0

task MmseqsExtractalignedregion {
  input {
    Int? extract_mode
    Int? compressed
    Int? db_load_mode
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs extractalignedregion \
      ~{if defined(extract_mode) then ("--extract-mode " +  '"' + extract_mode + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(db_load_mode) then ("--db-load-mode " +  '"' + db_load_mode + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    extract_mode: "Extract from 1: Query, 2: Target [2]"
    compressed: "Write compressed output [0]"
    db_load_mode: "Database preload mode 0: auto, 1: fread, 2: mmap, 3: mmap+touch [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}