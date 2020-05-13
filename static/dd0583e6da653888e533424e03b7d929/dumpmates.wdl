version 1.0

task Dumpmates {
  input {
    Boolean eE
    Boolean sS
    Boolean vV
    String? dumpDumpMates
  }
  command <<<
    dumpmates \
      ~{dumpDumpMates} \
      ~{true="-e" false="" eE} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV}
  >>>
}