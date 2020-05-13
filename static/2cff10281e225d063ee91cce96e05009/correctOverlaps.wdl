version 1.0

task CorrectOverlaps {
  input {
    Boolean sS
    Boolean oO
    Boolean rR
    Boolean cC
    Boolean oO
    Boolean tT
    Boolean lL
    Boolean eE
    Boolean sS
  }
  command <<<
    correctOverlaps \
      ~{true="-S" false="" sS} \
      ~{true="-O" false="" oO} \
      ~{true="-R" false="" rR} \
      ~{true="-c" false="" cC} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{true="-l" false="" lL} \
      ~{true="-e" false="" eE} \
      ~{true="-s" false="" sS}
  >>>
}