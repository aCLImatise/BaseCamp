version 1.0

task Junccomp {
  input {
    String aA
    String bB
    String oO
  }
  command <<<
    junccomp \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}