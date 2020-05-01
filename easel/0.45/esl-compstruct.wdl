version 1.0

task EslCompstruct {
  input {
    Boolean mM
    Boolean pP
    Boolean quietQuiet
  }
  command <<<
    esl-compstruct \
      ~{true="-m" false="" mM} \
      ~{true="-p" false="" pP} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}