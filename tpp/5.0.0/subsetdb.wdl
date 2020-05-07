version 1.0

task Subsetdb {
  input {
    Boolean mM
    Boolean nN
    Boolean eE
    Boolean oO
    Boolean pP
    Boolean cC
    Boolean rR
    Boolean rR
    Boolean sS
    Boolean dD
    Boolean sS
    Boolean lL
    Boolean vV
    Boolean mM
  }
  command <<<
    subsetdb \
      ~{true="-M" false="" mM} \
      ~{true="-N" false="" nN} \
      ~{true="-e" false="" eE} \
      ~{true="-O" false="" oO} \
      ~{true="-P" false="" pP} \
      ~{true="-C" false="" cC} \
      ~{true="-R" false="" rR} \
      ~{true="-r" false="" rR} \
      ~{true="-s" false="" sS} \
      ~{true="-D" false="" dD} \
      ~{true="-S" false="" sS} \
      ~{true="-L" false="" lL} \
      ~{true="-V" false="" vV} \
      ~{true="-m" false="" mM}
  >>>
}