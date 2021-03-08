version 1.0

task PhylorankRankRes {
  input {
    File? tax_a_file
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
  runtime {
    docker: "quay.io/biocontainers/phylorank:0.1.10--py_0"
  }
  parameter_meta {
    tax_a_file: "output file indicating taxa within each resolution\\ncategory\\n"
    input_tree: "decorated tree"
    taxonomy_file: "file with taxonomy for extant taxa"
    output_file: "output file with resolution of taxa at each rank"
  }
  output {
    File out_stdout = stdout()
    File out_tax_a_file = "${in_tax_a_file}"
  }
}