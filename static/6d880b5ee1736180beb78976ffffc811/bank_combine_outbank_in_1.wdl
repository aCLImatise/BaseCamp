version 1.0

task BankCombineOutbankIn1 {
  input {
    String? inInN
  }
  command <<<
    bank-combine outbank in_1 \
      ~{inInN}
  >>>
}