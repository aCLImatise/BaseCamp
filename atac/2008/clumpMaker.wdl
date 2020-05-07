version 1.0

task ClumpMaker {
  input {
    Boolean sS
  }
  command <<<
    clumpMaker \
      ~{true="-S" false="" sS}
  >>>
}