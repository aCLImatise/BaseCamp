version 1.0

task SimpleOverlap {
  input {
    Boolean aA
    String eE
    Boolean fF
    String oO
    String vV
    String? bankBankName
  }
  command <<<
    simple-overlap \
      ~{bankBankName} \
      ~{true="-a" false="" aA} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{true="-F" false="" fF} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""}
  >>>
}