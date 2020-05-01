version 1.0

task Mglobprobe {
  input {
    String sS
    String pP
  }
  command <<<
    mglobprobe \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}