version 1.0

task Tarchive2ca {
  input {
    String oO
    String cC
    String lL
  }
  command <<<
    tarchive2ca \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}