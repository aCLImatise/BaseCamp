version 1.0

task PipitsProcess {
  input {
    File iI
    String oO
    Float dD
    Float cC
    String lL
    Boolean includeIncludeUniqueSeqs
    Boolean rR
    Boolean vV
    Int tT
    Int xmsXms
    Int xXMx
    Boolean warWarCup
    Boolean uniteUnite
  }
  command <<<
    pipits_process \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="--includeuniqueseqs" false="" includeIncludeUniqueSeqs} \
      ~{true="-r" false="" rR} \
      ~{true="-v" false="" vV} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(xmsXms) then ("--Xms " +  '"' + xmsXms + '"') else ""} \
      ~{if defined(xXMx) then ("--Xmx " +  '"' + xXMx + '"') else ""} \
      ~{true="--warcup" false="" warWarCup} \
      ~{true="--unite" false="" uniteUnite}
  >>>
}