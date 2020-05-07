version 1.0

task SnpSiftHwe {
  input {
    Boolean qQ
    Boolean vV
  }
  command <<<
    SnpSift hwe \
      ~{true="-q" false="" qQ} \
      ~{true="-v" false="" vV}
  >>>
}