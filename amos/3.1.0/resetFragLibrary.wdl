version 1.0

task ResetFragLibrary {
  input {
    String? updateUpdateClrRanges
    String? bankBankName
    String? fragFragIdNewlibId
  }
  command <<<
    resetFragLibrary \
      ~{updateUpdateClrRanges} \
      ~{bankBankName} \
      ~{fragFragIdNewlibId}
  >>>
}