version 1.0

task SeqtkFqchk {
  input {
    Boolean qQ
    String? 2020
    String? inInFq
  }
  command <<<
    seqtk fqchk \
      ~{2020} \
      ~{true="-q" false="" qQ} \
      ~{inInFq}
  >>>
}