version 1.0

task SpacepharerRestrictranks {
  input {
    Int? rank_min_seq_ids
    Int? tax_lineage
    String? lca_ranks
    Int? compressed
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    spacepharer restrictranks \
      ~{if defined(rank_min_seq_ids) then ("--rank-min-seq-ids " +  '"' + rank_min_seq_ids + '"') else ""} \
      ~{if defined(tax_lineage) then ("--tax-lineage " +  '"' + tax_lineage + '"') else ""} \
      ~{if defined(lca_ranks) then ("--lca-ranks " +  '"' + lca_ranks + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/spacepharer:5.c2e680a--h95f258a_0"
  }
  parameter_meta {
    rank_min_seq_ids: "Comma-separated sequence identity thresholds to restrict ranks to:\\nspecies, genus, family, order, class, phylum, kingdom, superkingdom [0.86,0.84,0.82,0.80,0.78,0.76,0.74,0.72]"
    tax_lineage: "0: don't show, 1: add all lineage names, 2: add all lineage taxids [0]"
    lca_ranks: "Add column with specified ranks (',' separated) []"
    compressed: "Write compressed output [0]"
    threads: "Number of CPU-cores used (all by default) [2]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}