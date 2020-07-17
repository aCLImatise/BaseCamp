version 1.0

task PATHOGISTConsensus {
  input {
    Boolean? all_constraints
    String? method
    String distance_matrices
    String clusterings
    String fine_clusterings
    String output_path
  }
  command <<<
    PATHOGIST consensus \
      ~{distance_matrices} \
      ~{clusterings} \
      ~{fine_clusterings} \
      ~{output_path} \
      ~{true="--all_constraints" false="" all_constraints} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""}
  >>>
  parameter_meta {
    all_constraints: "add all constraints to the optimization problem, not just those with mixed signs."
    method: "Method for consensus clustering"
    distance_matrices: "path to file containing paths to distance matrices for different clusterings"
    clusterings: "path to file containing paths to clusterings, represented as either matrices or lists of clustering assignments"
    fine_clusterings: "path to file containing the names of the clusterings which are the finest"
    output_path: "path to output tsv file"
  }
}