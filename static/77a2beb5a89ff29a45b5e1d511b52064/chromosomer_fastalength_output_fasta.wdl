version 1.0

task ChromosomerFastalengthOutputFasta {
  input {
    String? fastFastA
    String? outputOutput
  }
  command <<<
    chromosomer fastalength output fasta \
      ~{fastFastA} \
      ~{outputOutput}
  >>>
}