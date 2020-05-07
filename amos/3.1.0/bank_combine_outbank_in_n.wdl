version 1.0

task BankCombineOutbankInN {
  input {
    String? inIn1
    String? inInN
  }
  command <<<
    bank-combine outbank in_n \
      ~{inIn1} \
      ~{inInN}
  >>>
}