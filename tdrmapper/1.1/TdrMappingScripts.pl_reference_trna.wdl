version 1.0

task TdrMappingScripts.plReferenceTrna.fa {
  input {
    String? sampleSampleFa
  }
  command <<<
    TdrMappingScripts.pl reference_trna.fa \
      ~{sampleSampleFa}
  >>>
}