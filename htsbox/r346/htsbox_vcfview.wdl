version 1.0

task HtsboxVcfview {
  input {
    Boolean bB
    Boolean sS
    File oO
    Int lL
    File tT
    File sS
    Boolean gG
    Boolean iI
  }
  command <<<
    htsbox vcfview \
      ~{true="-b" false="" bB} \
      ~{true="-S" false="" sS} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-G" false="" gG} \
      ~{true="-I" false="" iI}
  >>>
}