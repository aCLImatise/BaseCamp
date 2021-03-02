version 1.0

task Fitpkaeopy {
  input {
    Boolean? author
    Boolean? verbose
    Boolean? graph
    String _graphpath_file
  }
  command <<<
    fitpkaeo_py \
      ~{_graphpath_file} \
      ~{if (author) then "--author" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (graph) then "--graph" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    author: "show the program's author name and exit"
    verbose: "If stated, prints verbose showing initial and final\\nvalues of X2. Default: False"
    graph: "If stated, generates a plot of the fitted curve. Default:"
    _graphpath_file: "--graph-path FILE  Path to save the graph. Default: ./graph.png"
  }
  output {
    File out_stdout = stdout()
  }
}