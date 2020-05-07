version 1.0

task LibraryHistogram {
  input {
    String? bankBankPath
  }
  command <<<
    library-histogram \
      ~{bankBankPath}
  >>>
}