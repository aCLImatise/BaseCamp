version 1.0

task BiomAddMetadata {
  input {
    File inputInputFp
    File outputOutputFp
    File sampleSampleMetadataFp
    File observationObservationMetadataFp
    String scScSeparated
    String scScPipeSeparated
    String intIntFields
    String floatFloatFields
    String sampleSampleHeader
    String observationObservationHeader
    Boolean outputOutputAsJson
  }
  command <<<
    biom add-metadata \
      ~{if defined(inputInputFp) then ("--input-fp " +  '"' + inputInputFp + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output-fp " +  '"' + outputOutputFp + '"') else ""} \
      ~{if defined(sampleSampleMetadataFp) then ("--sample-metadata-fp " +  '"' + sampleSampleMetadataFp + '"') else ""} \
      ~{if defined(observationObservationMetadataFp) then ("--observation-metadata-fp " +  '"' + observationObservationMetadataFp + '"') else ""} \
      ~{if defined(scScSeparated) then ("--sc-separated " +  '"' + scScSeparated + '"') else ""} \
      ~{if defined(scScPipeSeparated) then ("--sc-pipe-separated " +  '"' + scScPipeSeparated + '"') else ""} \
      ~{if defined(intIntFields) then ("--int-fields " +  '"' + intIntFields + '"') else ""} \
      ~{if defined(floatFloatFields) then ("--float-fields " +  '"' + floatFloatFields + '"') else ""} \
      ~{if defined(sampleSampleHeader) then ("--sample-header " +  '"' + sampleSampleHeader + '"') else ""} \
      ~{if defined(observationObservationHeader) then ("--observation-header " +  '"' + observationObservationHeader + '"') else ""} \
      ~{true="--output-as-json" false="" outputOutputAsJson}
  >>>
}