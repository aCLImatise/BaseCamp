version 1.0

task Pxtcomb {
  input {
    File? tree_f
    File? add_tree
    File? out_f
    Boolean? citation
  }
  command <<<
    pxtcomb \
      ~{if defined(tree_f) then ("--treef " +  '"' + tree_f + '"') else ""} \
      ~{if defined(add_tree) then ("--addtree " +  '"' + add_tree + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    tree_f: "reference treefile, STDIN otherwise"
    add_tree: "alternate treefile"
    out_f: "output file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}