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
      ~{if (input_biom_table) then "-i" else ""} \
      ~{if (input_phylogeny_newick) then "-t" else ""} \
      ~{if (the_method_) then "-m" else ""} \
      ~{if (output_distance_matrix) then "-o" else ""} \
      ~{if (number_threads_default) then "-n" else ""} \
      ~{if (generalized_unifrac_alpha) then "-a" else ""} \
      ~{if (bypass_tips_reduces) then "-f" else ""} \
      ~{if (vaw) then "--vaw" else ""} \
      ~{if (mode) then "--mode" else ""} \
      ~{if (start) then "--start" else ""} \
      ~{if (stop) then "--stop" else ""} \
      ~{if (partial_pattern) then "--partial-pattern" else ""} \
      ~{if (n_partials) then "--n-partials" else ""} \
      ~{if (report_bare) then "--report-bare" else ""}
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
    mode: "[OPTIONAL] Mode of operation:\\none-off : [DEFAULT] compute UniFrac.\\npartial : Compute UniFrac over a subset of stripes.\\npartial-report : Start and stop suggestions for partial compute.\\nmerge-partial : Merge partial UniFrac results."
    start: "[OPTIONAL] If mode==partial, the starting stripe."
    stop: "[OPTIONAL] If mode==partial, the stopping stripe."
    partial_pattern: "[OPTIONAL] If mode==merge-partial, a glob pattern for partial outputs to merge."
    n_partials: "[OPTIONAL] If mode==partial-report, the number of partitions to compute."
    report_bare: "[OPTIONAL] If mode==partial-report, produce barebones output."
    method: ""
  }
  output {
    File out_stdout = stdout()
  }
}