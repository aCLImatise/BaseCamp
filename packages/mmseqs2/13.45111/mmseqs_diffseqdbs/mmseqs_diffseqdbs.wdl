version 1.0

task MmseqsDiffseqdbs {
  input {
    Boolean? use_seq_id
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs diffseqdbs \
      ~{if defined(use_seq_id) then ("--use-seq-id " +  '"' + use_seq_id + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    use_seq_id: "Sequence ID (Uniprot, GenBank, ...) is used for identifying matches between the old and the new DB [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}