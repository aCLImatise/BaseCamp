version 1.0

task NebulizerAddLibraryDatasets {
  input {
    String? file_type
    String? db_key
    Boolean? server
    Boolean? link
    String galaxy
    String dest
    File? file
  }
  command <<<
    nebulizer add_library_datasets \
      ~{galaxy} \
      ~{dest} \
      ~{file} \
      ~{if defined(file_type) then ("--file-type " +  '"' + file_type + '"') else ""} \
      ~{if defined(db_key) then ("--dbkey " +  '"' + db_key + '"') else ""} \
      ~{true="--server" false="" server} \
      ~{true="--link" false="" link}
  >>>
  parameter_meta {
    file_type: "Galaxy data type to assign the files to (default is 'auto'). Must be a valid Galaxy data type. If not 'auto' then all files will be assigned the same type."
    db_key: "dbkey to assign to files (default is '?')"
    server: "upload files from the Galaxy server file system (default is to upload files from local system)"
    link: "create symlinks to files on server (only valid if used with --server; default is to copy files into Galaxy)"
    galaxy: ""
    dest: ""
    file: ""
  }
}