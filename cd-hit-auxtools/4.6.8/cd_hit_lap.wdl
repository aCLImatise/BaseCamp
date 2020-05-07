version 1.0

task CdHitLap {
  input {
    Boolean iI
    Boolean oO
    Boolean mM
    Boolean pP
    Boolean dD
    Boolean sS
    Boolean stdoutStdout
  }
  command <<<
    cd-hit-lap \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-m" false="" mM} \
      ~{true="-p" false="" pP} \
      ~{true="-d" false="" dD} \
      ~{true="-s" false="" sS} \
      ~{true="-stdout" false="" stdoutStdout}
  >>>
}