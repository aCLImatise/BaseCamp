version 1.0

task TaxonUtilsToHdf {
  input {
    String tableTableName
    Boolean overwriteOverwrite
    Int indexIndexSize
    Int chunkChunkSize
    Boolean progressProgress
  }
  command <<<
    taxon-utils to_hdf \
      ~{if defined(tableTableName) then ("--table-name " +  '"' + tableTableName + '"') else ""} \
      ~{true="--overwrite" false="" overwriteOverwrite} \
      ~{if defined(indexIndexSize) then ("--index-size " +  '"' + indexIndexSize + '"') else ""} \
      ~{if defined(chunkChunkSize) then ("--chunk-size " +  '"' + chunkChunkSize + '"') else ""} \
      ~{true="--progress" false="" progressProgress}
  >>>
}