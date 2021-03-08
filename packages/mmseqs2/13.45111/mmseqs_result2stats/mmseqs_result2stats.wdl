version 1.0

task MmseqsResult2stats {
  input {
    String? stat
    Boolean? tsv
    Int? compressed
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs result2stats \
      ~{if defined(stat) then ("--stat " +  '"' + stat + '"') else ""} \
      ~{if defined(tsv) then ("--tsv " +  '"' + tsv + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    stat: "One of: linecount, mean, doolittle, charges, seqlen, firstline []"
    tsv: "Return output in TSV format [0]"
    compressed: "Write compressed output [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}