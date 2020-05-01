version 1.0

task Bsmap {
  input {
    Boolean aA
    Boolean dD
    Boolean oO
    Boolean bB
    Boolean eE
    Boolean iI
    Boolean kK
    Boolean pP
    Boolean dD
    Boolean sS
    Boolean nN
    Boolean mM
    Boolean qQ
    Boolean zZ
    Boolean fF
    Boolean aA
    Boolean lL
    Boolean rR
    Boolean rR
    Boolean uU
    Boolean hH
    Boolean vV
    Boolean uU
    Boolean bB
    Boolean mM
    Boolean xX
  }
  command <<<
    bsmap \
      ~{true="-a" false="" aA} \
      ~{true="-d" false="" dD} \
      ~{true="-o" false="" oO} \
      ~{true="-B" false="" bB} \
      ~{true="-E" false="" eE} \
      ~{true="-I" false="" iI} \
      ~{true="-k" false="" kK} \
      ~{true="-p" false="" pP} \
      ~{true="-D" false="" dD} \
      ~{true="-S" false="" sS} \
      ~{true="-n" false="" nN} \
      ~{true="-M" false="" mM} \
      ~{true="-q" false="" qQ} \
      ~{true="-z" false="" zZ} \
      ~{true="-f" false="" fF} \
      ~{true="-A" false="" aA} \
      ~{true="-L" false="" lL} \
      ~{true="-r" false="" rR} \
      ~{true="-R" false="" rR} \
      ~{true="-u" false="" uU} \
      ~{true="-H" false="" hH} \
      ~{true="-V" false="" vV} \
      ~{true="-U" false="" uU} \
      ~{true="-b" false="" bB} \
      ~{true="-m" false="" mM} \
      ~{true="-x" false="" xX}
  >>>
}