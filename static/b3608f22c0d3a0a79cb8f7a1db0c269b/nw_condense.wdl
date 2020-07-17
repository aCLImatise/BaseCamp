version 1.0

task NwCondense {
  input {
    Boolean? unicifies_leaf_labels
  }
  command <<<
    nw_condense \
      ~{true="-u" false="" unicifies_leaf_labels}
  >>>
  parameter_meta {
    unicifies_leaf_labels: ": unicifies leaf labels by visiting the tree in Newick order and removing any leaf node whose label was already seen."
  }
}