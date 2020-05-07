version 1.0

task HtsboxPeovlp {
  input {
    File bB
    Array[Int]+ bB
    Int tT
    Int lL
    Int oO
    String pP
    Int tT
    Boolean pP
    Boolean dD
  }
  command <<<
    htsbox peovlp \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{true="-P" false="" pP} \
      ~{true="-d" false="" dD}
  >>>
}