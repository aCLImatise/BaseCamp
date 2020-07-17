version 1.0

task Ssu {
  input {
    Boolean? input_biom_table
    Boolean? input_phylogeny_newick
    Boolean? the_method_
    Boolean? output_distance_matrix
    Boolean? number_threads_default
    Boolean? generalized_unifrac_alpha
    Boolean? bypass_tips_reduces
    Boolean? vaw
    Boolean? mode
    Boolean? start
    Boolean? stop
    Boolean? partial_pattern
    Boolean? n_partials
    Boolean? report_bare
    String? method
  }
  command <<<
    ssu \
      ~{method} \
      ~{true="-i" false="" input_biom_table} \
      ~{true="-t" false="" input_phylogeny_newick} \
      ~{true="-m" false="" the_method_} \
      ~{true="-o" false="" output_distance_matrix} \
      ~{true="-n" false="" number_threads_default} \
      ~{true="-a" false="" generalized_unifrac_alpha} \
      ~{true="-f" false="" bypass_tips_reduces} \
      ~{true="--vaw" false="" vaw} \
      ~{true="--mode" false="" mode} \
      ~{true="--start" false="" start} \
      ~{true="--stop" false="" stop} \
      ~{true="--partial-pattern" false="" partial_pattern} \
      ~{true="--n-partials" false="" n_partials} \
      ~{true="--report-bare" false="" report_bare}
  >>>
  parameter_meta {
    input_biom_table: "The input BIOM table."
    input_phylogeny_newick: "The input phylogeny in newick."
    the_method_: "The method, [unweighted | weighted_normalized | weighted_unnormalized | generalized]."
    output_distance_matrix: "The output distance matrix."
    number_threads_default: "[OPTIONAL] The number of threads, default is 1."
    generalized_unifrac_alpha: "[OPTIONAL] Generalized UniFrac alpha, default is 1."
    bypass_tips_reduces: "[OPTIONAL] Bypass tips, reduces compute by about 50%."
    vaw: "[OPTIONAL] Variance adjusted, default is to not adjust for variance."
    mode: "[OPTIONAL] Mode of operation: one-off : [DEFAULT] compute UniFrac. partial : Compute UniFrac over a subset of stripes. partial-report : Start and stop suggestions for partial compute. merge-partial : Merge partial UniFrac results."
    start: "[OPTIONAL] If mode==partial, the starting stripe."
    stop: "[OPTIONAL] If mode==partial, the stopping stripe."
    partial_pattern: "[OPTIONAL] If mode==merge-partial, a glob pattern for partial outputs to merge."
    n_partials: "[OPTIONAL] If mode==partial-report, the number of partitions to compute."
    report_bare: "[OPTIONAL] If mode==partial-report, produce barebones output."
    method: ""
  }
}