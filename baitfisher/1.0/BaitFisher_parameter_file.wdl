version 1.0

task BaitFisherParameterFile {
  input {
    String? gffGffFileTest
  }
  command <<<
    BaitFisher parameter-file \
      ~{gffGffFileTest}
  >>>
}