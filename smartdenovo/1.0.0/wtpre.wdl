version 1.0

task Wtpre {
  input {
    String oO
    Boolean fF
    Boolean lL
    Int jJ
    Int cC
    String pP
  }
  command <<<
    wtpre \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-L" false="" lL} \
      ~{if defined(jJ) then ("-J " +  '"' + jJ + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}