version 1.0

task Decifer {
  input {
    File? purity_file
    File? beta_binomial
    Boolean? ccf
    Int? mink
    Int? max_k
    Int? restarts
    Int? max_it
    Float? elbow
    Boolean? binary_search
    Boolean? record
    Int? jobs
    String? output_prefix_default
    File? state_trees
    String? seed
  }
  command <<<
    decifer \
      ~{if defined(purity_file) then ("--purityfile " +  '"' + purity_file + '"') else ""} \
      ~{if defined(beta_binomial) then ("--betabinomial " +  '"' + beta_binomial + '"') else ""} \
      ~{if (ccf) then "--ccf" else ""} \
      ~{if defined(mink) then ("--mink " +  '"' + mink + '"') else ""} \
      ~{if defined(max_k) then ("--maxk " +  '"' + max_k + '"') else ""} \
      ~{if defined(restarts) then ("--restarts " +  '"' + restarts + '"') else ""} \
      ~{if defined(max_it) then ("--maxit " +  '"' + max_it + '"') else ""} \
      ~{if defined(elbow) then ("--elbow " +  '"' + elbow + '"') else ""} \
      ~{if (binary_search) then "--binarysearch" else ""} \
      ~{if (record) then "--record" else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(output_prefix_default) then ("--output " +  '"' + output_prefix_default + '"') else ""} \
      ~{if defined(state_trees) then ("--statetrees " +  '"' + state_trees + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/decifer:0.0.2--py27ha58320b_0"
  }
  parameter_meta {
    purity_file: "File with purity of each sample (TSV file in two\\ncolumns`SAMPLE PURITY`)"
    beta_binomial: "File with precisions for betabinomial fit (default:\\nbinomial likelihood)"
    ccf: "Run with CCF instead of DCF (default: False)"
    mink: "Minimum number of clusters, which must be at least 2\\n(default: 2)"
    max_k: "Maximum number of clusters (default: 12)"
    restarts: "Number of restarts (default: 100)"
    max_it: "Maximum number of iterations per restart (default:\\n200)"
    elbow: "Elbow sensitivity, lower values increase sensitivity\\n(default: 0.06)"
    binary_search: "Use binary-search model selection (default: False,\\niterative is used; use binary search when considering\\nlarge numbers of clusters"
    record: "Record objectives (default: False"
    jobs: "Number of parallele jobs to use (default: equal to\\nnumber of available processors)"
    output_prefix_default: "Output prefix (default: ./decifer)"
    state_trees: "Filename of state-trees file (default: use\\nstate_trees.txt in the package)"
    seed: "Random-generator seed (default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}