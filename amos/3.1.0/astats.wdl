version 1.0

task Astats {
  input {
    String? bankBankPath
  }
  command <<<
    astats \
      ~{bankBankPath}
  >>>
}