version 1.0

task MmseqsResult2dnamsa {
  input {
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
    Boolean? skip_query
  }
  command <<<
    mmseqs result2dnamsa \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(skip_query) then ("--skip-query " +  '"' + skip_query + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    skip_query: "Skip the query sequence [0]"
  }
  output {
    File out_stdout = stdout()
  }
}