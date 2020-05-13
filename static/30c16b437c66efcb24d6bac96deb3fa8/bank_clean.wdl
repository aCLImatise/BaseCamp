version 1.0

task BankClean {
  input {
    File bB
    Boolean vV
    String? bankBankClean
  }
  command <<<
    bank-clean \
      ~{bankBankClean} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}