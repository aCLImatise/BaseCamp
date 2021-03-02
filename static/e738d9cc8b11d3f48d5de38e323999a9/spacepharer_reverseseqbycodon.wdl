version 1.0

task SpacepharerReverseseqbycodon {
  input {
    Int? compressed
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    spacepharer reverseseqbycodon \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/spacepharer:4.228b9e5--h2d02072_0"
  }
  parameter_meta {
    compressed: "Write compressed output [0]"
    threads: "Number of CPU-cores used (all by default) [8]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}