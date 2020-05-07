version 1.0

task RemoveRepeats.pl {
  input {
    String fF
    String cC
    String oO
    String sS
  }
  command <<<
    removeRepeats.pl \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}