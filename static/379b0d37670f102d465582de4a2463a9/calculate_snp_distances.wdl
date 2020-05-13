version 1.0

task CalculateSnpDistances.py {
  input {
    Boolean forceForce
    File pairsPairs
    File matrixMatrix
    Boolean vV
    String? snpSnpMatrixFile
  }
  command <<<
    calculate_snp_distances.py \
      ~{snpSnpMatrixFile} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(pairsPairs) then ("--pairs " +  '"' + pairsPairs + '"') else ""} \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}