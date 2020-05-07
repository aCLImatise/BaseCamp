version 1.0

task Sreport {
  input {
    String oO
  }
  command <<<
    Sreport \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}