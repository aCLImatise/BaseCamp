version 1.0

task Kart {
  input {
    Int tT
    Boolean fF
    Boolean f2F2
    Boolean oO
    Boolean boBo
    Boolean mM
    Int gG
    Boolean pP
    Boolean pacPacBio
    Boolean vV
  }
  command <<<
    kart \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-f2" false="" f2F2} \
      ~{true="-o" false="" oO} \
      ~{true="-bo" false="" boBo} \
      ~{true="-m" false="" mM} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-pacbio" false="" pacPacBio} \
      ~{true="-v" false="" vV}
  >>>
}