version 1.0

task PseudoPvals.py {
  input {
    String typeType
    String outfileOutfile
    String? computeCompute
    String? pseudoPseudo
    String? pPVals
    String? fromFrom
    String? aA
    String? setSet
    String? correlationsCorrelations
    String? obtainedObtained
    String? fromFrom
    String? permutedPermuted
    String? dataData
  }
  command <<<
    PseudoPvals.py \
      ~{computeCompute} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{pseudoPseudo} \
      ~{pPVals} \
      ~{fromFrom} \
      ~{aA} \
      ~{setSet} \
      ~{correlationsCorrelations} \
      ~{obtainedObtained} \
      ~{fromFrom} \
      ~{permutedPermuted} \
      ~{dataData}
  >>>
}