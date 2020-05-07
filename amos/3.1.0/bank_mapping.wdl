version 1.0

task BankMapping {
  input {
    File bB
    Boolean sS
    Boolean vV
    String? bankBankMapping
  }
  command <<<
    bank-mapping \
      ~{bankBankMapping} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-v" false="" vV}
  >>>
}