version 1.0

task IvarTrim {
  input {
    Boolean iI
    Boolean bB
    Boolean mM
    Boolean qQ
    Boolean sS
    Boolean eE
    Boolean pP
  }
  command <<<
    ivar trim \
      ~{true="-i" false="" iI} \
      ~{true="-b" false="" bB} \
      ~{true="-m" false="" mM} \
      ~{true="-q" false="" qQ} \
      ~{true="-s" false="" sS} \
      ~{true="-e" false="" eE} \
      ~{true="-p" false="" pP}
  >>>
}