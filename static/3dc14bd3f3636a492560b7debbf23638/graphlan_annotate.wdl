version 1.0

task GraphlanAnnotate.py {
  input {
    String? an_not
    Boolean? v
    String input_tree
    String output_tree
  }
  command <<<
    graphlan_annotate.py \
      ~{input_tree} \
      ~{output_tree} \
      ~{if defined(an_not) then ("--annot " +  '"' + an_not + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    an_not: "specify the annotation file"
    v: ""
    input_tree: "the input tree in Newick, Nexus, PhyloXML or plain text format"
    output_tree: "the output tree in PhyloXML format containing the newly added annotations. If not specified, the input tree file will be overwritten"
  }
}