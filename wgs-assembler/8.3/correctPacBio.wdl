version 1.0

task CorrectPacBio {
  input {
    Boolean oO
    Boolean gG
    Boolean eE
    Boolean eE
    Boolean cC
    Boolean tT
    Boolean pP
    String oO
    Boolean cC
    Boolean mM
    Boolean mM
    Boolean sS
    Boolean vV
    Boolean rR
  }
  command <<<
    correctPacBio \
      ~{true="-O" false="" oO} \
      ~{true="-G" false="" gG} \
      ~{true="-e" false="" eE} \
      ~{true="-E" false="" eE} \
      ~{true="-c" false="" cC} \
      ~{true="-t" false="" tT} \
      ~{true="-p" false="" pP} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-C" false="" cC} \
      ~{true="-M" false="" mM} \
      ~{true="-m" false="" mM} \
      ~{true="-S" false="" sS} \
      ~{true="-v" false="" vV} \
      ~{true="-R" false="" rR}
  >>>
}