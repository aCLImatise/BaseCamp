version 1.0

task RsemBam2wig {
  input {
    Boolean noNoFractionalWeight
    String? sortedSortedAlignmentFile
    String? wigWigOutput
    String? wiggleWiggleName
  }
  command <<<
    rsem-bam2wig \
      ~{sortedSortedAlignmentFile} \
      ~{true="--no-fractional-weight" false="" noNoFractionalWeight} \
      ~{wigWigOutput} \
      ~{wiggleWiggleName}
  >>>
}