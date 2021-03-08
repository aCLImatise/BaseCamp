version 1.0

task MmseqsCombinepvalperset {
  input {
    Float? alpha
    Int? aggregation_mode
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs combinepvalperset \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""} \
      ~{if defined(aggregation_mode) then ("--aggregation-mode " +  '"' + aggregation_mode + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    alpha: "Set alpha for combining p-values during aggregation [1.000]"
    aggregation_mode: "Combined P-values computed from 0: multi-hit, 1: minimum of all P-values, 2: product-of-P-values, 3: truncated product [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}