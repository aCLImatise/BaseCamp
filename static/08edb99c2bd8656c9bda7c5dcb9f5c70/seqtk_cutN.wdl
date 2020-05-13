version 1.0

task SeqtkCutN {
  input {
    Int nN
    Int pP
    Boolean gG
    String? inInFa
  }
  command <<<
    seqtk cutN \
      ~{inInFa} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-g" false="" gG}
  >>>
}