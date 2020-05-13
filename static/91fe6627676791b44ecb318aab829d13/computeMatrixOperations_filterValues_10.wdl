version 1.0

task ComputeMatrixOperationsFilterValues10 {
  input {
    String mM
    String oO
    Boolean minMin
    Boolean maxMax
    String? 10001000
  }
  command <<<
    computeMatrixOperations filterValues 10 \
      ~{10001000} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--min" false="" minMin} \
      ~{true="--max" false="" maxMax}
  >>>
}