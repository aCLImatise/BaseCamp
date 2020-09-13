version 1.0

task SpacepharerFindpam {
  input {
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    spacepharer findpam \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  parameter_meta {
    threads: "Number of CPU-cores used (all by default) [8]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}