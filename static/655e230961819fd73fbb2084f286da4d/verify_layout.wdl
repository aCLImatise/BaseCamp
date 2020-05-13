version 1.0

task VerifyLayout {
  input {
    String? bankBankName
  }
  command <<<
    verify-layout \
      ~{bankBankName}
  >>>
}