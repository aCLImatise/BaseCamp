version 1.0

task SpacepharerFindpam {
  input {
    Int? flanking_seq_len
    Int? compressed
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    spacepharer findpam \
      ~{if defined(flanking_seq_len) then ("--flanking-seq-len " +  '"' + flanking_seq_len + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/spacepharer:4.228b9e5--h2d02072_0"
  }
  parameter_meta {
    flanking_seq_len: "Length of protospacer flanking sequence to extract for possible PAMs scanning [10]"
    compressed: "Write compressed output [0]"
    threads: "Number of CPU-cores used (all by default) [8]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}