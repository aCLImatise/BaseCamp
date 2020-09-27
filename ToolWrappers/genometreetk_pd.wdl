version 1.0

task GenometreetkPd {
  input {
    File? per_tax_a_pg_file
    Boolean? silent
    String tree
    String tax_a_list
    String over
  }
  command <<<
    genometreetk pd \
      ~{tree} \
      ~{tax_a_list} \
      ~{over} \
      ~{if defined(per_tax_a_pg_file) then ("--per_taxa_pg_file " +  '"' + per_tax_a_pg_file + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    per_tax_a_pg_file: "file to record phylogenetic gain of each ingroup taxa\\nrelative to the outgroup"
    silent: "suppress output"
    tree: "newick tree"
    tax_a_list: "list of ingroup taxa, one per line, to calculated PD"
    over: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}