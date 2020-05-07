version 1.0

task SelectReads {
  input {
    String? bankBankPath
  }
  command <<<
    select-reads \
      ~{bankBankPath}
  >>>
}