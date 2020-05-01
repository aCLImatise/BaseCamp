version 1.0

task Prerapsearch {
  input {
    String sS
    String fF
  }
  command <<<
    prerapsearch \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}