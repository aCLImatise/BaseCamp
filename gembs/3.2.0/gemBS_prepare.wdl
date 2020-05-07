version 1.0

task GemBSPrepare {
  input {
    String configConfig
    String textTextMetadata
    String outputOutput
    Boolean noNoDb
    String dbDbFile
    String limsLimsCNagJson
  }
  command <<<
    gemBS prepare \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(textTextMetadata) then ("--text-metadata " +  '"' + textTextMetadata + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--no-db" false="" noNoDb} \
      ~{if defined(dbDbFile) then ("--db-file " +  '"' + dbDbFile + '"') else ""} \
      ~{if defined(limsLimsCNagJson) then ("--lims-cnag-json " +  '"' + limsLimsCNagJson + '"') else ""}
  >>>
}