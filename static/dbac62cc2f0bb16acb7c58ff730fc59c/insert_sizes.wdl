version 1.0

task InsertSizes {
  input {
    String? bankBankPath
  }
  command <<<
    insert-sizes \
      ~{bankBankPath}
  >>>
}