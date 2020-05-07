version 1.0

task ComputeMatrixOperationsRbindInput2.mat.gz {
  input {
    String mM
    String oO
  }
  command <<<
    computeMatrixOperations rbind input2.mat.gz \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}