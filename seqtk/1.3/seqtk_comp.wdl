version 1.0

task SeqtkComp {
  input {
    Boolean uU
    String rR
    String? inInFa
  }
  command <<<
    seqtk comp \
      ~{inInFa} \
      ~{true="-u" false="" uU} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""}
  >>>
}