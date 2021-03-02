version 1.0

task PhylorankBlDist {
  input {
    File? trusted_tax_a_file
    Int? min_children
    File? taxonomy_file
    String input_tree
    String output_dir
  }
  command <<<
    phylorank bl_dist \
      ~{input_tree} \
      ~{output_dir} \
      ~{if defined(trusted_tax_a_file) then ("--trusted_taxa_file " +  '"' + trusted_tax_a_file + '"') else ""} \
      ~{if defined(min_children) then ("--min_children " +  '"' + min_children + '"') else ""} \
      ~{if defined(taxonomy_file) then ("--taxonomy_file " +  '"' + taxonomy_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phylorank:0.1.9--py_0"
  }
  parameter_meta {
    trusted_tax_a_file: "file indicating trusted taxonomic groups to use for\\ninferring distribution (default: all taxa)"
    min_children: "minimum required child taxa to consider taxa when\\ninferring distribution (default: 2)"
    taxonomy_file: "read taxonomy from this file instead of directly from\\ntree\\n"
    input_tree: "input tree to calculate branch length distributions"
    output_dir: "desired output directory for generated files"
  }
  output {
    File out_stdout = stdout()
  }
}