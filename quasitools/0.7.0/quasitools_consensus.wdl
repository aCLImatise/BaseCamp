version 1.0

task QuasitoolsConsensus {
  input {
    String bam
    String reference
  }
  command <<<
    quasitools consensus \
      ~{bam} \
      ~{reference}
  >>>
  parameter_meta {
    bam: ""
    reference: ""
  }
}