version 1.0

task RsatMatrixclustering {
  input {
    String matrix_clustering
    String util
    String computer_dot
    String results_dot
    String displayed_dot
    String step_dot
    String version_dot
    String motifs_dot
    File file_dot
    String warning_dot
    String nodes_dot
    String clustering_dot
    String html_dot
    String cluster_dot
  }
  command <<<
    rsat matrix_clustering \
      ~{matrix_clustering} \
      ~{util} \
      ~{computer_dot} \
      ~{results_dot} \
      ~{displayed_dot} \
      ~{step_dot} \
      ~{version_dot} \
      ~{motifs_dot} \
      ~{file_dot} \
      ~{warning_dot} \
      ~{nodes_dot} \
      ~{clustering_dot} \
      ~{html_dot} \
      ~{cluster_dot}
  >>>
  parameter_meta {
    matrix_clustering: "[1mDESCRIPTION[0m"
    util: "[1mUSAGE[0m"
    computer_dot: "[1mSEE ALSO[0m"
    results_dot: "This label is useful when two motifs for the same TF come from"
    displayed_dot: "[1m-task tasks[0m"
    step_dot: "Assumes the users already have the description table and"
    version_dot: "We suggest use this option for a big set of input motifs > 300"
    motifs_dot: "[1mNOTE:[0m By the moment the only a few thresholds can be used with this"
    file_dot: "NOTE: take into account the input file size"
    warning_dot: "This parameter can be useful to prevent submission of excessive"
    nodes_dot: "[33maverage[0m (default)"
    clustering_dot: "Supported metrics : cor, Ncor, dEucl, NdEucl, logocor, logoDP,"
    html_dot: "The hierarchical tree in JSON format is always exported, since"
    cluster_dot: "This option is useful when the user wants to explore the data"
  }
  output {
    File out_stdout = stdout()
  }
}