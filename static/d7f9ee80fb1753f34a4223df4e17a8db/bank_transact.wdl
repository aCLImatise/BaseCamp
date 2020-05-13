version 1.0

task BankTransact {
  input {
    File bB
    Boolean cC
    Boolean fF
    File mM
    Boolean zZ
    Boolean vV
    String? bankBankTransact
  }
  command <<<
    bank-transact \
      ~{bankBankTransact} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-f" false="" fF} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{true="-z" false="" zZ} \
      ~{true="-v" false="" vV}
  >>>
}