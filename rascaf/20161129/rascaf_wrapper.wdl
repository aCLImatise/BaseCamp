version 1.0

task RascafWrapper.pl {
  input {
    String bB
    String fF
    String oO
    Int msMs
    Int mlMl
    Int kK
  }
  command <<<
    rascaf-wrapper.pl \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(msMs) then ("-ms " +  '"' + msMs + '"') else ""} \
      ~{if defined(mlMl) then ("-ml " +  '"' + mlMl + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""}
  >>>
}