version 1.0

task Pyega3Files {
  input {
    String? identifierIdentifier
  }
  command <<<
    pyega3 files \
      ~{identifierIdentifier}
  >>>
}