version 1.0

task QualimapCompCounts {
  input {
    String algorithmAlgorithm
    String bamBam
    String gtfGtf
    String idId
    String outOut
    String sequencingSequencingProtocol
    Boolean pairedPaired
    Boolean sortedSorted
    String typeType
  }
  command <<<
    qualimap comp-counts \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(bamBam) then ("-bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(gtfGtf) then ("-gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(idId) then ("-id " +  '"' + idId + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(sequencingSequencingProtocol) then ("--sequencing-protocol " +  '"' + sequencingSequencingProtocol + '"') else ""} \
      ~{true="--paired" false="" pairedPaired} \
      ~{true="--sorted" false="" sortedSorted} \
      ~{if defined(typeType) then ("-type " +  '"' + typeType + '"') else ""}
  >>>
}