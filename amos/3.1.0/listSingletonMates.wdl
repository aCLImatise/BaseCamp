version 1.0

task ListSingletonMates {
  input {
    String? bankBankPath
  }
  command <<<
    listSingletonMates \
      ~{bankBankPath}
  >>>
}