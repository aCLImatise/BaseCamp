version 1.0

task MmseqsCreatetsv {
  input {
    Boolean? first_seq_as_repr
    Int? target_column
    Boolean? full_header
    Int? idx_seq_src
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
    Boolean? db_output
  }
  command <<<
    mmseqs createtsv \
      ~{if defined(first_seq_as_repr) then ("--first-seq-as-repr " +  '"' + first_seq_as_repr + '"') else ""} \
      ~{if defined(target_column) then ("--target-column " +  '"' + target_column + '"') else ""} \
      ~{if defined(full_header) then ("--full-header " +  '"' + full_header + '"') else ""} \
      ~{if defined(idx_seq_src) then ("--idx-seq-src " +  '"' + idx_seq_src + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(db_output) then ("--db-output " +  '"' + db_output + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    first_seq_as_repr: "Use the first sequence of the clustering result as representative sequence [0]"
    target_column: "Select a target column (default 1), 0 if no target id exists [1]"
    full_header: "Replace DB ID by its corresponding Full Header [0]"
    idx_seq_src: "0: auto, 1: split/translated sequences, 2: input sequences [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    db_output: "Return a result DB instead of a text file [0]"
  }
  output {
    File out_stdout = stdout()
  }
}