version 1.0

task BedparseGtf2bed {
  input {
    String extrafieldsExtrafields
    String filterFilterKey
    String filterFilterType
    String transcriptTranscriptFeatureName
    String? gtfGtf
  }
  command <<<
    bedparse gtf2bed \
      ~{gtfGtf} \
      ~{if defined(extrafieldsExtrafields) then ("--extraFields " +  '"' + extrafieldsExtrafields + '"') else ""} \
      ~{if defined(filterFilterKey) then ("--filterKey " +  '"' + filterFilterKey + '"') else ""} \
      ~{if defined(filterFilterType) then ("--filterType " +  '"' + filterFilterType + '"') else ""} \
      ~{if defined(transcriptTranscriptFeatureName) then ("--transcript_feature_name " +  '"' + transcriptTranscriptFeatureName + '"') else ""}
  >>>
}