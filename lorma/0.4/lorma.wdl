version 1.0

task Lorma.sh {
  input {
    String sS
    String nN
  }
  command <<<
    lorma.sh \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""}
  >>>
}