version 1.0

task NwLabels {
  input {
    Boolean? print_labels_inner
    Boolean? print_leaf_labels
    Boolean? print_only_roots
    Boolean? tabseparated_print_single
  }
  command <<<
    nw_labels \
      ~{true="-I" false="" print_labels_inner} \
      ~{true="-L" false="" print_leaf_labels} \
      ~{true="-r" false="" print_only_roots} \
      ~{true="-t" false="" tabseparated_print_single}
  >>>
  parameter_meta {
    print_labels_inner: ": don't print labels of inner nodes"
    print_leaf_labels: ": don't print leaf labels"
    print_only_roots: ": print only the root's label"
    tabseparated_print_single: ": TAB-separated - print on a single line, separated by tab stops."
  }
}