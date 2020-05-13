version 1.0

task SeqtkGc {
  input {
    Boolean wW
    Float fF
    Int lL
    Float xX
    String? inInFa
  }
  command <<<
    seqtk gc \
      ~{inInFa} \
      ~{true="-w" false="" wW} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""}
  >>>
}