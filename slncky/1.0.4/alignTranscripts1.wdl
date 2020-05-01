version 1.0

task AlignTranscripts1.0 {
  input {
    String? bedBedA
    String? genomeGenomeFastaA
    String? beBeDb
    String? genomeGenomeFastAb
    String? outOutPrefix
  }
  command <<<
    alignTranscripts1.0 \
      ~{bedBedA} \
      ~{genomeGenomeFastaA} \
      ~{beBeDb} \
      ~{genomeGenomeFastAb} \
      ~{outOutPrefix}
  >>>
}