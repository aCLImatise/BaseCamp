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
      ~{if (all_constraints) then "--all_constraints" else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all_constraints: "add all constraints to the optimization problem, not\\njust those with mixed signs."
    method: "Method for correlation clustering\\n"
    distance_matrix: "path to the distance matrix file"
    threshold: "threshold value for correlation"
    output_path: "path to write cluster output tsv file"
  }
  output {
    File out_stdout = stdout()
  }
}