version 1.0

task NebulizerAddLibraryDatasets {
  input {
    String fileFileType
    String dbDbKey
    Boolean serverServer
    Boolean linkLink
  }
  command <<<
    nebulizer add_library_datasets \
      ~{if defined(fileFileType) then ("--file-type " +  '"' + fileFileType + '"') else ""} \
      ~{if defined(dbDbKey) then ("--dbkey " +  '"' + dbDbKey + '"') else ""} \
      ~{true="--server" false="" serverServer} \
      ~{true="--link" false="" linkLink}
  >>>
}