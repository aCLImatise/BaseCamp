version 1.0

task BankCombineIn1 {
  input {
    String? outOutBank
    String? inIn1
    String? inInN
  }
  command <<<
    bank-combine in_1 \
      ~{outOutBank} \
      ~{inIn1} \
      ~{inInN}
  >>>
}