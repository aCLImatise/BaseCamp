version 1.0

task MetaeukReduceredundancy {
  input {
    Int? overlap
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    metaeuk reduceredundancy \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metaeuk:4.a0f584d--h2d02072_0"
  }
  parameter_meta {
    overlap: "allow predictions to overlap another on the same strand. when not allowed (default), only the prediction with better E-value will be retained [0,1] [0]"
    threads: "Number of CPU-cores used (all by default) [8]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}