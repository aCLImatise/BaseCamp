version 1.0

task Pindel {
  input {
    String fF
    String pP
  }
  command <<<
    pindel \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}