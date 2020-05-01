version 1.0

task ParallelAllAgainstAllBlastp {
  input {
    Int pP
    String oO
    String mM
    String bB
    Boolean vV
    File? fileFileFaa
  }
  command <<<
    parallel_all_against_all_blastp \
      ~{fileFileFaa} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}