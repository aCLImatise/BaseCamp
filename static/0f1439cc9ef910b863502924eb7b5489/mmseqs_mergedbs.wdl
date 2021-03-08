version 1.0

task MmseqsMergedbs {
  input {
    Int? compressed
    Int? verbosity_level_errors
    String? prefixes
    Boolean? merge_stop_empty
  }
  command <<<
    mmseqs mergedbs \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(prefixes) then ("--prefixes " +  '"' + prefixes + '"') else ""} \
      ~{if defined(merge_stop_empty) then ("--merge-stop-empty " +  '"' + merge_stop_empty + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    prefixes: "Comma separated list of prefixes for each entry []"
    merge_stop_empty: "Don't continue merging entries after an empty entry [0]"
  }
  output {
    File out_stdout = stdout()
  }
}