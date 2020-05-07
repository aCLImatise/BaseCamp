version 1.0

task SeqtkHety {
  input {
    Int wW
    Int tT
    Boolean mM
    String? inInFa
  }
  command <<<
    seqtk hety \
      ~{inInFa} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-m" false="" mM}
  >>>
}