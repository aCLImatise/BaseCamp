version 1.0

task ErrorCorrectionKmerfreq {
  input {
    Int kK
    Int kK
    Int sS
    String pP
    Boolean vV
  }
  command <<<
    ErrorCorrection kmerfreq \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}