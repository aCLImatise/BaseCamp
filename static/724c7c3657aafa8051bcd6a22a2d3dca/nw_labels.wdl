version 1.0

task NwLabels {
  input {
    Boolean? print_labels_inner
    Boolean? print_leaf_labels
    Boolean? print_roots_label
    Boolean? tabseparated_print_single
  }
  command <<<
    nw_labels \
      ~{if (print_labels_inner) then "-I" else ""} \
      ~{if (print_leaf_labels) then "-L" else ""} \
      ~{if (print_roots_label) then "-r" else ""} \
      ~{if (tabseparated_print_single) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_labels_inner: ": don't print labels of inner nodes"
    print_leaf_labels: ": don't print leaf labels"
    print_roots_label: ": print only the root's label"
    tabseparated_print_single: ": TAB-separated - print on a single line, separated by tab stops."
  }
  output {
    File out_stdout = stdout()
  }
}