version 1.0

task ParsecToolsUploadFile {
  input {
    String? db_key
    String? file_name
    String? file_type
    Boolean? to_posix_lines
    String auto
  }
  command <<<
    parsec tools upload_file \
      ~{auto} \
      ~{if defined(db_key) then ("--dbkey " +  '"' + db_key + '"') else ""} \
      ~{if defined(file_name) then ("--file_name " +  '"' + file_name + '"') else ""} \
      ~{if defined(file_type) then ("--file_type " +  '"' + file_type + '"') else ""} \
      ~{if (to_posix_lines) then "--to_posix_lines" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    db_key: "(optional) genome dbkey"
    file_name: "(optional) name of the new history dataset"
    file_type: "(optional) Galaxy datatype for the new dataset, default is"
    to_posix_lines: "if ``True`` (the default), convert universal line endings\\nto POSIX line endings. Set to ``False`` when uploading a\\ngzip, bz2 or zip archive containing a binary file"
    auto: "--space_to_tab    whether to convert spaces to tabs. Default is ``False``."
  }
  output {
    File out_stdout = stdout()
  }
}