version 1.0

task SketchyFeatureLineage {
  input {
    File dataData
    String lineageLineage
    File outputOutput
    Boolean summarySummary
    File fileFilePath
    String patternPattern
    File keyKey
    Boolean reReIndex
  }
  command <<<
    sketchy feature lineage \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(lineageLineage) then ("--lineage " +  '"' + lineageLineage + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--summary" false="" summarySummary} \
      ~{if defined(fileFilePath) then ("--file_path " +  '"' + fileFilePath + '"') else ""} \
      ~{if defined(patternPattern) then ("--pattern " +  '"' + patternPattern + '"') else ""} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{true="--reindex" false="" reReIndex}
  >>>
}