version 1.0

task BaitFisherGffFileTest {
  input {
    String? parameterParameterFile
    String? gffGffFileTest
  }
  command <<<
    BaitFisher gffFileTest \
      ~{parameterParameterFile} \
      ~{gffGffFileTest}
  >>>
}