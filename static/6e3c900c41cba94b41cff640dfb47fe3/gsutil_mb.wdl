version 1.0

task GsutilMb {
  input {
    String cC
    String lL
    String pP
  }
  command <<<
    gsutil mb \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}