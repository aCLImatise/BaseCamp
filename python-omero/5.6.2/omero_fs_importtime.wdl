version 1.0

task OmeroFsImporttime {
  input {
    Boolean cacheCache
    Boolean summarySummary
  }
  command <<<
    omero fs importtime \
      ~{true="--cache" false="" cacheCache} \
      ~{true="--summary" false="" summarySummary}
  >>>
}