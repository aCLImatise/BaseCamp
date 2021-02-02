version 1.0

task ScpredEigenDecompR {
  input {
    File? training_matrix
    String? log_transform
    File? training_labels
    Int? principal_comps
    Int? random_seed
    File? output_path
  }
  command <<<
    scpred_eigen_decomp_R \
      ~{if defined(training_matrix) then ("--training-matrix " +  '"' + training_matrix + '"') else ""} \
      ~{if defined(log_transform) then ("--log-transform " +  '"' + log_transform + '"') else ""} \
      ~{if defined(training_labels) then ("--training-labels " +  '"' + training_labels + '"') else ""} \
      ~{if defined(principal_comps) then ("--principal-comps " +  '"' + principal_comps + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(output_path) then ("--output-path " +  '"' + output_path + '"') else ""}
  >>>
  parameter_meta {
    training_matrix: "Path to the training matrix in .rds format"
    log_transform: "Should log-transform be performed on the matrix? Default: TRUE"
    training_labels: "Path to the training labels (metadata) in text format"
    principal_comps: "Number of pricipal components for eigenvalue decomposition"
    random_seed: "Seed for random number generator"
    output_path: "Output path for the scPred object in .rds format"
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}