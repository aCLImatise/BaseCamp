version 1.0

task PATHOGISTConsensus {
  input {
    Boolean? all_constraints
    String? method
    String positional_arguments
    String distance_matrices
    String clusterings
    String fine_clusterings
    String path_output_tsv
  }
  command <<<
    PATHOGIST consensus \
      ~{positional_arguments} \
      ~{distance_matrices} \
      ~{clusterings} \
      ~{fine_clusterings} \
      ~{path_output_tsv} \
      ~{if (all_constraints) then "--all_constraints" else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all_constraints: "add all constraints to the optimization problem, not\\njust those with mixed signs."
    method: "Method for consensus clustering\\n"
    positional_arguments: "positional arguments:"
    distance_matrices: "path to file containing paths to distance matrices for\\ndifferent clusterings"
    clusterings: "path to file containing paths to clusterings,\\nrepresented as either matrices or lists of clustering\\nassignments"
    fine_clusterings: "path to file containing the names of the clusterings\\nwhich are the finest"
    path_output_tsv: "path to output tsv file"
  }
  output {
    File out_stdout = stdout()
  }
}