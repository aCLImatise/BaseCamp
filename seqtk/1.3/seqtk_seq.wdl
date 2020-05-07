version 1.0

task SeqtkSeq {
  input {
    Boolean vV
    Boolean uU
    Boolean sS
  }
  command <<<
    seqtk seq \
      ~{true="-V" false="" vV} \
      ~{true="-U" false="" uU} \
      ~{true="-S" false="" sS}
  >>>
}