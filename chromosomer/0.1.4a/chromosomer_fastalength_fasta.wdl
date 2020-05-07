version 1.0

task ChromosomerFastalengthFasta {
  input {
    String? fastFastA
    String? outputOutput
  }
  command <<<
    chromosomer fastalength fasta \
      ~{fastFastA} \
      ~{outputOutput}
  >>>
}