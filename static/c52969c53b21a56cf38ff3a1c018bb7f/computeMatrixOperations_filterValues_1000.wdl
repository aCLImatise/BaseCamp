version 1.0

task ComputeMatrixOperationsFilterValues1000 {
  input {
    String mM
    String oO
    Boolean minMin
    Boolean maxMax
    String? 1010
    String? 10001000
  }
  command <<<
    computeMatrixOperations filterValues 1000 \
      ~{1010} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--min" false="" minMin} \
      ~{true="--max" false="" maxMax} \
      ~{10001000}
  >>>
}