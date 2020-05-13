version 1.0

task BankReport {
  input {
    File bB
    Boolean bB
    File eE
    File iI
    Boolean pP
    Boolean iI
    Boolean sS
    Boolean fF
    Boolean vV
    String? bankBankReport
  }
  command <<<
    bank-report \
      ~{bankBankReport} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-B" false="" bB} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-i" false="" iI} \
      ~{true="-s" false="" sS} \
      ~{true="-F" false="" fF} \
      ~{true="-v" false="" vV}
  >>>
}