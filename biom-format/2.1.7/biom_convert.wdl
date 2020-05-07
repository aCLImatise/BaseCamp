version 1.0

task BiomConvert {
  input {
    File inputInputFp
    File outputOutputFp
    File sampleSampleMetadataFp
    File observationObservationMetadataFp
    Boolean toToJson
    Boolean toToHdf5
    Boolean toToTsv
    Boolean collapsedCollapsedSamples
    Boolean collapsedCollapsedObservations
    String headerHeaderKey
    String outputOutputMetadataId
    Boolean tableTableType
    Boolean processProcessObsMetadata
    Boolean tsvTsvMetadataFormatter
  }
  command <<<
    biom convert \
      ~{if defined(inputInputFp) then ("--input-fp " +  '"' + inputInputFp + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output-fp " +  '"' + outputOutputFp + '"') else ""} \
      ~{if defined(sampleSampleMetadataFp) then ("--sample-metadata-fp " +  '"' + sampleSampleMetadataFp + '"') else ""} \
      ~{if defined(observationObservationMetadataFp) then ("--observation-metadata-fp " +  '"' + observationObservationMetadataFp + '"') else ""} \
      ~{true="--to-json" false="" toToJson} \
      ~{true="--to-hdf5" false="" toToHdf5} \
      ~{true="--to-tsv" false="" toToTsv} \
      ~{true="--collapsed-samples" false="" collapsedCollapsedSamples} \
      ~{true="--collapsed-observations" false="" collapsedCollapsedObservations} \
      ~{if defined(headerHeaderKey) then ("--header-key " +  '"' + headerHeaderKey + '"') else ""} \
      ~{if defined(outputOutputMetadataId) then ("--output-metadata-id " +  '"' + outputOutputMetadataId + '"') else ""} \
      ~{true="--table-type" false="" tableTableType} \
      ~{true="--process-obs-metadata" false="" processProcessObsMetadata} \
      ~{true="--tsv-metadata-formatter" false="" tsvTsvMetadataFormatter}
  >>>
}