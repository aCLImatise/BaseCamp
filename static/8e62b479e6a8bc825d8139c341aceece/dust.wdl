version 1.0

task Dust {
  input {
    String? fastFastAFile
    String? cutCutOff
  }
  command <<<
    dust \
      ~{fastFastAFile} \
      ~{cutCutOff}
  >>>
}