version 1.0

task Obprobe {
  input {
    String sS
    String pP
  }
  command <<<
    obprobe \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}