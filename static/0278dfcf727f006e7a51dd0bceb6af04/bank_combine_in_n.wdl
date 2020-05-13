version 1.0

task BankCombineInN {
  input {
    String? outOutBank
    String? inIn1
    String? inInN
  }
  command <<<
    bank-combine in_n \
      ~{outOutBank} \
      ~{inIn1} \
      ~{inInN}
  >>>
}