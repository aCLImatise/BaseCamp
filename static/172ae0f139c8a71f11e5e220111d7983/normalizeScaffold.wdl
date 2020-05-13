version 1.0

task NormalizeScaffold {
  input {
    String? bankBankPath
  }
  command <<<
    normalizeScaffold \
      ~{bankBankPath}
  >>>
}