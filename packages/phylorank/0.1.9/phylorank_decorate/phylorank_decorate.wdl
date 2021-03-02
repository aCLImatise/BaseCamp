version 1.0

task PhylorankDecorate {
  input {
    Boolean? viral
    Boolean? skip_rd_refine
    File? trusted_tax_a_file
    Int? min_children
    Int? min_support
    String input_tree
    String taxonomy_file
    String output_tree
  }
  command <<<
    phylorank decorate \
      ~{input_tree} \
      ~{taxonomy_file} \
      ~{output_tree} \
      ~{if (viral) then "--viral" else ""} \
      ~{if (skip_rd_refine) then "--skip_rd_refine" else ""} \
      ~{if defined(trusted_tax_a_file) then ("--trusted_taxa_file " +  '"' + trusted_tax_a_file + '"') else ""} \
      ~{if defined(min_children) then ("--min_children " +  '"' + min_children + '"') else ""} \
      ~{if defined(min_support) then ("--min_support " +  '"' + min_support + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phylorank:0.1.9--py_0"
  }
  parameter_meta {
    viral: "indicates a viral input tree and taxonomy"
    skip_rd_refine: "skip refinement of taxonomy based on relative\\ndivergence information"
    trusted_tax_a_file: "file indicating trusted taxonomic groups to use for\\ninferring distribution (default: all taxa)"
    min_children: "minimum required child taxa to consider taxa when\\ninferring distribution (default: 2)"
    min_support: "minimum support value to consider taxa when inferring\\ndistribution (default: 0) (default: 0.0)\\n"
    input_tree: "tree to decorate"
    taxonomy_file: "file indicating taxonomy of extant taxa"
    output_tree: "decorated tree"
  }
  output {
    File out_stdout = stdout()
  }
}