version 1.0

task RevScaffold {
  input {
    String? bankBankPath
  }
  command <<<
    revScaffold \
      ~{bankBankPath}
  >>>
}