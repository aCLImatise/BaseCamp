version 1.0

task Cdbyank {
  input {
    String nN
    String lL
    String sS
  }
  command <<<
    cdbyank \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}