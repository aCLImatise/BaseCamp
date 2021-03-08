version 1.0

task MmseqsFiltertaxseqdb {
  input {
    String? tax_on_list
    Int? sub_db_mode
    Int? compressed
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs filtertaxseqdb \
      ~{if defined(tax_on_list) then ("--taxon-list " +  '"' + tax_on_list + '"') else ""} \
      ~{if defined(sub_db_mode) then ("--subdb-mode " +  '"' + sub_db_mode + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    tax_on_list: "Taxonomy ID, possibly multiple values separated by ',' []"
    sub_db_mode: "Subdb mode 0: copy data 1: soft link data and write index [0]"
    compressed: "Write compressed output [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}