version 1.0

task AlfredReplication {
  input {
    Boolean qQ
    Boolean wW
    Boolean sS
    Boolean rR
    Boolean oO
    String? optionsOptions
    String? g1bbamG1bbam
    String? s1bamS1bam
    String? s2bamS2bam
    String? s3bamS3bam
    String? s4bamS4bam
    String? g2bamG2bam
  }
  command <<<
    alfred replication \
      ~{optionsOptions} \
      ~{true="-q" false="" qQ} \
      ~{true="-w" false="" wW} \
      ~{true="-s" false="" sS} \
      ~{true="-r" false="" rR} \
      ~{true="-o" false="" oO} \
      ~{g1bbamG1bbam} \
      ~{s1bamS1bam} \
      ~{s2bamS2bam} \
      ~{s3bamS3bam} \
      ~{s4bamS4bam} \
      ~{g2bamG2bam}
  >>>
}