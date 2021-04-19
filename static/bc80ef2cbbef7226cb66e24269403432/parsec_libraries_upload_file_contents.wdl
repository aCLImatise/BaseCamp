version 1.0

task ParsecLibrariesUploadFileContents {
  input {
    File? folder_id
    File? file_type
    String? db_key
    String? tags
    String pasted_content
  }
  command <<<
    parsec libraries upload_file_contents \
      ~{pasted_content} \
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
    pasted_content: "Upload pasted_content to a data library as a new file."
  }
  output {
    File out_stdout = stdout()
  }
}