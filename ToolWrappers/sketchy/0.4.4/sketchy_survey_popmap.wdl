version 1.0

task SketchySurveyPopmap {
  input {
    File? ssh
    File? tree
    File? graph
    File? index
    File? column
    File? path_output_gif
  }
  command <<<
    sketchy survey popmap \
      ~{if defined(ssh) then ("--ssh " +  '"' + ssh + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""} \
      ~{if defined(path_output_gif) then ("--output " +  '"' + path_output_gif + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ssh: "Path to sum of shared hashes file to map to population\\n[required]  [required]"
    tree: "Path to phylogeny [newick] to use as population map\\n[required] NOTE: This argument is mutually exclusive with\\narguments: [graph]."
    graph: "Path to a population graph to use as population map\\n[none] NOTE: This argument is mutually exclusive with\\narguments: [tree]."
    index: "Path to lineage index file to use as validation\\npopulation [required]  [required]"
    column: "Column in index file that map the indices from the sum of\\nshared hashes file to the population"
    path_output_gif: "Path to a output GIF [pop.gif]"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_gif = "${in_path_output_gif}"
  }
}