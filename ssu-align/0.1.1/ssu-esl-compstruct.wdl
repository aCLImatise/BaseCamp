version 1.0

task SsuEslCompstruct {
  input {
    Boolean mM
    Boolean pP
    Boolean quietQuiet
  }
  command <<<
    ssu-esl-compstruct \
      ~{true="-m" false="" mM} \
      ~{true="-p" false="" pP} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}