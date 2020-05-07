version 1.0

task BiomSummarizeTable {
  input {
    File inputInputFp
    File outputOutputFp
    Boolean qualitativeQualitative
    Boolean observationsObservations
  }
  command <<<
    biom summarize-table \
      ~{if defined(inputInputFp) then ("--input-fp " +  '"' + inputInputFp + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output-fp " +  '"' + outputOutputFp + '"') else ""} \
      ~{true="--qualitative" false="" qualitativeQualitative} \
      ~{true="--observations" false="" observationsObservations}
  >>>
}