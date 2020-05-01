version 1.0

task KtImportText {
  input {
    String? textText
    String? nameName
  }
  command <<<
    ktImportText \
      ~{textText} \
      ~{nameName}
  >>>
}