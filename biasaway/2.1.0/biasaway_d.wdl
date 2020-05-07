version 1.0

task BiasawayD {
  input {
    String fF
    String nN
    String pP
  }
  command <<<
    biasaway d \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}