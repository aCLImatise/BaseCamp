version 1.0

task PATHOGISTCorrelation {
  input {
    Boolean? all_constraints
    String? method
    String distance_matrix
    String threshold
    String output_path
  }
  command <<<
    PATHOGIST correlation \
      ~{distance_matrix} \
      ~{threshold} \
      ~{output_path} \
      ~{true="--all_constraints" false="" all_constraints} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""}
  >>>
  parameter_meta {
    all_constraints: "add all constraints to the optimization problem, not just those with mixed signs."
    method: "Method for correlation clustering"
    distance_matrix: "path to the distance matrix file"
    threshold: "threshold value for correlation"
    output_path: "path to write cluster output tsv file"
  }
}