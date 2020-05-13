version 1.0

task DshFilterGfa1 {
  input {
    Boolean aboutAbout
    Boolean invalidInvalidSegmentReferences
    Boolean lengthLength
    Boolean fragmentFragmentCount
    Boolean kmKmErCount
    Boolean mappingMappingQuality
    Boolean mismatchMismatchCount
    Boolean readReadCount
    Boolean scriptScript
    Boolean inputInputGfa1File
    Boolean outputOutputGfa1File
  }
  command <<<
    dsh-filter-gfa1 \
      ~{true="--about" false="" aboutAbout} \
      ~{true="--invalid-segment-references" false="" invalidInvalidSegmentReferences} \
      ~{true="--length" false="" lengthLength} \
      ~{true="--fragment-count" false="" fragmentFragmentCount} \
      ~{true="--kmer-count" false="" kmKmErCount} \
      ~{true="--mapping-quality" false="" mappingMappingQuality} \
      ~{true="--mismatch-count" false="" mismatchMismatchCount} \
      ~{true="--read-count" false="" readReadCount} \
      ~{true="--script" false="" scriptScript} \
      ~{true="--input-gfa1-file" false="" inputInputGfa1File} \
      ~{true="--output-gfa1-file" false="" outputOutputGfa1File}
  >>>
}