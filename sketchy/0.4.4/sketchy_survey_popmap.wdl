version 1.0

task SketchySurveyPopmap {
  input {
    File? ssh
    File? tree
    File? graph
    File? index
    String? column
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
  parameter_meta {
    ssh: "Path to sum of shared hashes file to map to population [required]  [required]"
    tree: "Path to phylogeny [newick] to use as population map [required] NOTE: This argument is mutually exclusive with arguments: [graph]."
    graph: "Path to a population graph to use as population map [none] NOTE: This argument is mutually exclusive with arguments: [tree]."
    index: "Path to lineage index file to use as validation population [required]  [required]"
    column: "Column in index file that map the indices from the sum of shared hashes file to the population"
    path_output_gif: "Path to a output GIF [pop.gif]"
  }
}