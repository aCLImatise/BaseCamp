version 1.0

task FermiCorrect {
  input {
    Int kK
    Int oO
    Int tT
    Float cC
    Int lL
    Int sS
    Boolean kK
    String? readsReadsFmd
    String? readReadSfq
  }
  command <<<
    fermi correct \
      ~{readsReadsFmd} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-K" false="" kK} \
      ~{readReadSfq}
  >>>
}