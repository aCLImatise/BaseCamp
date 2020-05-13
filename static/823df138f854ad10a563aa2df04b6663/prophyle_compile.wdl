version 1.0

task ProphyleCompile {
  input {
    Boolean cC
    Boolean fF
    Boolean pP
    Boolean cC
  }
  command <<<
    prophyle compile \
      ~{true="-C" false="" cC} \
      ~{true="-F" false="" fF} \
      ~{true="-P" false="" pP} \
      ~{true="-c" false="" cC}
  >>>
}