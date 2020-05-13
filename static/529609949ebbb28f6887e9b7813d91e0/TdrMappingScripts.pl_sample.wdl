version 1.0

task TdrMappingScripts.plSample.fa {
  input {
    String? referenceReferenceTrnaFa
    String? sampleSampleFa
  }
  command <<<
    TdrMappingScripts.pl sample.fa \
      ~{referenceReferenceTrnaFa} \
      ~{sampleSampleFa}
  >>>
}