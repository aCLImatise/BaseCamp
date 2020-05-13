version 1.0

task ScoreAln.pl {
  input {
    Boolean iI
    Boolean fF
    Boolean oO
    Boolean sS
  }
  command <<<
    scoreAln.pl \
      ~{true="-i" false="" iI} \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO} \
      ~{true="-s" false="" sS}
  >>>
}