version 1.0

task SpacepharerSummarizeresults {
  input {
    Int? fmt
    Int? compressed
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    spacepharer summarizeresults \
      ~{if defined(fmt) then ("--fmt " +  '"' + fmt + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fmt: "0: short (only matches); 1: long (matches and hits); 2: long with nucleotide alignment [1]"
    compressed: "Write compressed output [0]"
    threads: "Number of CPU-cores used (all by default) [8]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}