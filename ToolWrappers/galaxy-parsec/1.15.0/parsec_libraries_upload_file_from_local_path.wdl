version 1.0

task ParsecLibrariesUploadFileFromLocalPath {
  input {
    File? folder_id
    File? file_type
    String? db_key
    String? tags
    String file_local_path
    String library_dot
  }
  command <<<
    parsec libraries upload_file_from_local_path \
      ~{file_local_path} \
      ~{library_dot} \
      ~{if defined(folder_id) then ("--folder_id " +  '"' + folder_id + '"') else ""} \
      ~{if defined(file_type) then ("--file_type " +  '"' + file_type + '"') else ""} \
      ~{if defined(db_key) then ("--dbkey " +  '"' + db_key + '"') else ""} \
      ~{if defined(tags) then ("--tags " +  '"' + tags + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    folder_id: "id of the folder where to place the uploaded file. If not\\nprovided, the root folder will be used"
    file_type: "Galaxy file format name  [default: auto]"
    db_key: "Dbkey  [default: ?]"
    tags: "A list of tags to add to the datasets"
    file_local_path: "Read local file contents from file_local_path and upload data to a"
    library_dot: "Output:\\nList with a single dictionary containing information about the LDDA"
  }
  output {
    File out_stdout = stdout()
  }
}