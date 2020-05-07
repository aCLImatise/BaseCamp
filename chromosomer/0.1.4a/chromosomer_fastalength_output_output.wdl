version 1.0

task ChromosomerFastalengthOutputOutput {
  input {
    String? fastFastA
    String? outputOutput
  }
  command <<<
    chromosomer fastalength output output \
      ~{fastFastA} \
      ~{outputOutput}
  >>>
}