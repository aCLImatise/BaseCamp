version 1.0

task Any2fasta {
  input {
    Boolean vV
    Boolean qQ
    Boolean nN
    Boolean lL
    Boolean uU
  }
  command <<<
    any2fasta \
      ~{true="-v" false="" vV} \
      ~{true="-q" false="" qQ} \
      ~{true="-n" false="" nN} \
      ~{true="-l" false="" lL} \
      ~{true="-u" false="" uU}
  >>>
}