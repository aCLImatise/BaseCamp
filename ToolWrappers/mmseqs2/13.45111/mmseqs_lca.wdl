version 1.0

task MmseqsLca {
  input {
    String? lca_ranks
    Int? blacklist
    Int? tax_lineage
    Int? compressed
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs lca \
      ~{if defined(lca_ranks) then ("--lca-ranks " +  '"' + lca_ranks + '"') else ""} \
      ~{if defined(blacklist) then ("--blacklist " +  '"' + blacklist + '"') else ""} \
      ~{if defined(tax_lineage) then ("--tax-lineage " +  '"' + tax_lineage + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    lca_ranks: "Add column with specified ranks (',' separated) []"
    blacklist: "Comma separated list of ignored taxa in LCA computation [12908:unclassified sequences,28384:other sequences]"
    tax_lineage: "0: don't show, 1: add all lineage names, 2: add all lineage taxids [0]"
    compressed: "Write compressed output [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}