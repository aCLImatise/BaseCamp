version 1.0

task MmseqsMajoritylca {
  input {
    Float? majority
    Int? vote_mode
    String? lca_ranks
    Int? blacklist
    Int? tax_lineage
    Int? compressed
    Int? threads
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs majoritylca \
      ~{if defined(majority) then ("--majority " +  '"' + majority + '"') else ""} \
      ~{if defined(vote_mode) then ("--vote-mode " +  '"' + vote_mode + '"') else ""} \
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
    majority: "minimal fraction of agreement among taxonomically assigned sequences of a set [0.500]"
    vote_mode: "Mode of assigning weights to compute majority. 0: uniform, 1: minus log E-value, 2: score [1]"
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