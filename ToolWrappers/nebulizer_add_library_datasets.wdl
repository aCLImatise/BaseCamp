version 1.0

task NebulizerAddLibraryDatasets {
  input {
    File? file_type
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
      ~{if (server) then "--server" else ""} \
      ~{if (link) then "--link" else ""}
  >>>
  parameter_meta {
    file_type: "Galaxy data type to assign the files to (default is\\n'auto'). Must be a valid Galaxy data type. If not 'auto'\\nthen all files will be assigned the same type."
    db_key: "dbkey to assign to files (default is '?')"
    server: "upload files from the Galaxy server file system (default\\nis to upload files from local system)"
    link: "create symlinks to files on server (only valid if used\\nwith --server; default is to copy files into Galaxy)"
    galaxy: ""
    dest: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}