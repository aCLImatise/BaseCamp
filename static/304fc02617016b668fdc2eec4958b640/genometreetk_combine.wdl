version 1.0

task GenometreetkCombine {
  input {
    String? support_type
    Boolean? silent
    String bootstrap_tree
    String jk_marker_tree
    String jk_tax_a_tree
    String output_tree
  }
  command <<<
    genometreetk combine \
      ~{bootstrap_tree} \
      ~{jk_marker_tree} \
      ~{jk_tax_a_tree} \
      ~{output_tree} \
      ~{if defined(support_type) then ("--support_type " +  '"' + support_type + '"') else ""} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    support_type: "type of support values to compute (default: average)"
    silent: "suppress output"
    bootstrap_tree: "tree with bootstrap support values"
    jk_marker_tree: "tree with jackknife marker support values"
    jk_tax_a_tree: "tree with jackknife taxa support values"
    output_tree: "output tree"
  }
}