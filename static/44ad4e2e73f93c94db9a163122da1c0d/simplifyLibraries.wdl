version 1.0

task SimplifyLibraries {
  input {
    String? bankBankName
  }
  command <<<
    simplifyLibraries \
      ~{bankBankName}
  >>>
}