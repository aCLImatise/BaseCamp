version 1.0

task Pxbp {
  input {
    File? tree_f
    Boolean? verbose
    Boolean? edge_all
    Boolean? unique_tree
    File? map_tree
    Boolean? cut_off
    Boolean? suppress
    File? out_f
    Boolean? citation
  }
  command <<<
    pxbp \
      ~{if defined(tree_f) then ("--treef " +  '"' + tree_f + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (edge_all) then "--edgeall" else ""} \
      ~{if (unique_tree) then "--uniquetree" else ""} \
      ~{if defined(map_tree) then ("--maptree " +  '"' + map_tree + '"') else ""} \
      ~{if (cut_off) then "--cutoff" else ""} \
      ~{if (suppress) then "--suppress" else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    tree_f: "input treefile, STDIN otherwise"
    verbose: "give more output"
    edge_all: "force edgewise (not node - so when things are unrooted) and\\nassume all taxa are present in all trees"
    unique_tree: "output unique trees and *no* other output"
    map_tree: "put the bipart freq on the edges of this tree. This will\\ncreate a *.pxbpmapped.tre file."
    cut_off: "skip biparts that have support lower than this."
    suppress: "don't print all the output (maybe you use this\\nwith the maptree feature"
    out_f: "output file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}