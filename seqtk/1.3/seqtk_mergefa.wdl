version 1.0

task SeqtkMergefa {
  input {
    Int qQ
    Boolean iI
    Boolean mM
    Boolean rR
    String? in1faIn1fa
    String? in2faIn2fa
  }
  command <<<
    seqtk mergefa \
      ~{in1faIn1fa} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-m" false="" mM} \
      ~{true="-r" false="" rR} \
      ~{in2faIn2fa}
  >>>
}