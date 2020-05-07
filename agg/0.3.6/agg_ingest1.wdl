version 1.0

task AggIngest1 {
  input {
    String outputOutput
    File fastFastARef
    Boolean ignoreIgnoreNonMatchingRef
    String? inputInputGvcF
  }
  command <<<
    agg ingest1 \
      ~{inputInputGvcF} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(fastFastARef) then ("--fasta-ref " +  '"' + fastFastARef + '"') else ""} \
      ~{true="--ignore-non-matching-ref" false="" ignoreIgnoreNonMatchingRef}
  >>>
}