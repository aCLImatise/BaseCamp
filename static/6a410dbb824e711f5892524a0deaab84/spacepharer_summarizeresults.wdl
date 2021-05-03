version 1.0

task SpacepharerSummarizeresults {
  input {
    Int? fmt
    String? lca_ranks
    Int? tax_lineage
    Int? compressed
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    spacepharer summarizeresults \
      ~{if defined(fmt) then ("--fmt " +  '"' + fmt + '"') else ""} \
      ~{if defined(lca_ranks) then ("--lca-ranks " +  '"' + lca_ranks + '"') else ""} \
      ~{if defined(tax_lineage) then ("--tax-lineage " +  '"' + tax_lineage + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/spacepharer:5.c2e680a--h95f258a_0"
  }
  parameter_meta {
    fmt: "0: short (only matches)\\n1: long (matches and hits)\\n2: long with nucleotide alignment [1]"
    lca_ranks: "Add column with specified ranks (',' separated) []"
    tax_lineage: "0: don't show, 1: add all lineage names, 2: add all lineage taxids [0]"
    compressed: "Write compressed output [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}