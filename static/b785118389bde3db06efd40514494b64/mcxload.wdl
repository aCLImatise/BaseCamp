version 1.0

task Mcxload {
  input {
    String abcAbc
    String oO
  }
  command <<<
    mcxload \
      ~{if defined(abcAbc) then ("-abc " +  '"' + abcAbc + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}