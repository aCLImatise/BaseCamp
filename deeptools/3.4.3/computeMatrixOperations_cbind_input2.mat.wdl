version 1.0

task ComputeMatrixOperationsCbindInput2.mat.gz {
  input {
    String mM
    String oO
  }
  command <<<
    computeMatrixOperations cbind input2.mat.gz \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}