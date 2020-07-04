version 1.0

task RipserCoeff {
  input {
    Boolean? format
    String? dim
    String? threshold
    String? modulus
    String rip_ser
    File? filename
  }
  command <<<
    ripser-coeff \
      ~{rip_ser} \
      ~{filename} \
      ~{true="--format" false="" format} \
      ~{if defined(dim) then ("--dim " +  '"' + dim + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(modulus) then ("--modulus " +  '"' + modulus + '"') else ""}
  >>>
  parameter_meta {
    format: "use the specified file format for the input. Options are: lower-distance (lower triangular distance matrix; default) upper-distance (upper triangular distance matrix) distance       (full distance matrix) point-cloud    (point cloud in Euclidean space) dipha          (distance matrix in DIPHA file format)"
    dim: "compute persistent homology up to dimension <k>"
    threshold: "compute Rips complexes up to diameter <t>"
    modulus: "compute homology with coefficients in the prime field Z/<p>Z"
    rip_ser: ""
    filename: ""
  }
}