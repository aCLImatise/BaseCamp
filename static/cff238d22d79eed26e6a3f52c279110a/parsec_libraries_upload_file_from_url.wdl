version 1.0

task ParsecLibrariesUploadFileFromUrl {
  input {
    File? folder_id
    File? file_type
    String? db_key
    String? tags
    String library_id
    String file_url
  }
  command <<<
    parsec libraries upload_file_from_url \
      ~{library_id} \
      ~{file_url} \
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
    library_id: ""
    file_url: ""
  }
  output {
    File out_stdout = stdout()
  }
}