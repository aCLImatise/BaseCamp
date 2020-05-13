version 1.0

task FindDuplicateReads {
  input {
    String? bankBankName
  }
  command <<<
    find-duplicate-reads \
      ~{bankBankName}
  >>>
}