version 1.0

task Ripser {
  input {
    Boolean? format
    String? dim
    String? threshold
    File? filename
  }
  command <<<
    ripser \
      ~{filename} \
      ~{if (format) then "--format" else ""} \
      ~{if defined(dim) then ("--dim " +  '"' + dim + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format: "use the specified file format for the input. Options are:\\nlower-distance (lower triangular distance matrix; default)\\nupper-distance (upper triangular distance matrix)\\ndistance       (full distance matrix)\\npoint-cloud    (point cloud in Euclidean space)\\ndipha          (distance matrix in DIPHA file format)"
    dim: "compute persistent homology up to dimension <k>"
    threshold: "compute Rips complexes up to diameter <t>"
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}