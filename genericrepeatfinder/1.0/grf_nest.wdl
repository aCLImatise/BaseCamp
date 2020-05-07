version 1.0

task GrfNest {
  input {
    String? inputInputFastA
    String? genomeGenomeFastA
    String? outputOutputFastA
  }
  command <<<
    grf-nest \
      ~{inputInputFastA} \
      ~{genomeGenomeFastA} \
      ~{outputOutputFastA}
  >>>
}