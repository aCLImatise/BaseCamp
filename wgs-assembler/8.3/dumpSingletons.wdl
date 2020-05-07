version 1.0

task DumpSingletons {
  input {
    Boolean pP
    Boolean cC
    Boolean gG
    Boolean nN
    Boolean uU
    Boolean sS
  }
  command <<<
    dumpSingletons \
      ~{true="-p" false="" pP} \
      ~{true="-c" false="" cC} \
      ~{true="-g" false="" gG} \
      ~{true="-n" false="" nN} \
      ~{true="-U" false="" uU} \
      ~{true="-S" false="" sS}
  >>>
}