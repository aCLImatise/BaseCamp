version 1.0

task Ripsercoeff {
  input {
    Boolean? format
    String? dim
    String? threshold
    String? modulus
    String rip_ser
    File? filename
  }
  command <<<
    ripser_coeff \
      ~{rip_ser} \
      ~{filename} \
      ~{if (format) then "--format" else ""} \
      ~{if defined(dim) then ("--dim " +  '"' + dim + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(modulus) then ("--modulus " +  '"' + modulus + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format: "use the specified file format for the input. Options are:\\nlower-distance (lower triangular distance matrix; default)\\nupper-distance (upper triangular distance matrix)\\ndistance       (full distance matrix)\\npoint-cloud    (point cloud in Euclidean space)\\ndipha          (distance matrix in DIPHA file format)"
    dim: "compute persistent homology up to dimension <k>"
    threshold: "compute Rips complexes up to diameter <t>"
    modulus: "compute homology with coefficients in the prime field Z/<p>Z"
    rip_ser: ""
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}