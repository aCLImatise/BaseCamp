version 1.0

task PhylorankRankRes {
  input {
    String? tax_a_file
    String input_tree
    String taxonomy_file
    String output_file
  }
  command <<<
    phylorank rank_res \
      ~{input_tree} \
      ~{taxonomy_file} \
      ~{output_file} \
      ~{if defined(tax_a_file) then ("--taxa_file " +  '"' + tax_a_file + '"') else ""}
  >>>
  parameter_meta {
    tax_a_file: "output file indicating taxa within each resolution category"
    input_tree: "decorated tree"
    taxonomy_file: "file with taxonomy for extant taxa"
    output_file: "output file with resolution of taxa at each rank"
  }
}