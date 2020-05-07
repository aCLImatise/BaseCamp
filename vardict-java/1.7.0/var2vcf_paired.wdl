version 1.0

task Var2vcfPaired.pl {
  input {
    Boolean hH
    Boolean cC
    Boolean sS
    Boolean mM
    Boolean aA
    Boolean dD
    Boolean cC
    Boolean iI
    Boolean mM
    Boolean nN
    Boolean pP
    Boolean pP
    Boolean qQ
    Boolean qQ
    Boolean dD
    Boolean vV
    Boolean fF
    Boolean oO
    Boolean fF
  }
  command <<<
    var2vcf_paired.pl \
      ~{true="-H" false="" hH} \
      ~{true="-C" false="" cC} \
      ~{true="-S" false="" sS} \
      ~{true="-M" false="" mM} \
      ~{true="-A" false="" aA} \
      ~{true="-D" false="" dD} \
      ~{true="-c" false="" cC} \
      ~{true="-I" false="" iI} \
      ~{true="-m" false="" mM} \
      ~{true="-N" false="" nN} \
      ~{true="-P" false="" pP} \
      ~{true="-p" false="" pP} \
      ~{true="-q" false="" qQ} \
      ~{true="-Q" false="" qQ} \
      ~{true="-d" false="" dD} \
      ~{true="-v" false="" vV} \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO} \
      ~{true="-F" false="" fF}
  >>>
}