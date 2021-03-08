version 1.0

task MmseqsSplitdb {
  input {
    Int? split
    Int? compressed
    Int? verbosity_level_errors
    Boolean? split_aa
  }
  command <<<
    mmseqs splitdb \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(split_aa) then ("--split-aa " +  '"' + split_aa + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    split: "Split input into N equally distributed chunks. 0: set the best split automatically [0]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    split_aa: "Try to find the best split boundaries by entry lengths [0]"
  }
  output {
    File out_stdout = stdout()
  }
}