version 1.0

task GsutilMbUrl... {
  input {
    String cC
    String lL
    String pP
    String sS
  }
  command <<<
    gsutil mb url... \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}