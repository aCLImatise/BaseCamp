version 1.0

task GraphlanAnnotatepy {
  input {
    File? an_not
    Boolean? v
    String input_tree
    String output_tree
  }
  command <<<
    graphlan_annotate_py \
      ~{input_tree} \
      ~{output_tree} \
      ~{if defined(an_not) then ("--annot " +  '"' + an_not + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    an_not: "specify the annotation file"
    v: ""
    input_tree: "the input tree in Newick, Nexus, PhyloXML or plain\\ntext format"
    output_tree: "the output tree in PhyloXML format containing the\\nnewly added annotations. If not specified, the input\\ntree file will be overwritten"
  }
  output {
    File out_stdout = stdout()
  }
}