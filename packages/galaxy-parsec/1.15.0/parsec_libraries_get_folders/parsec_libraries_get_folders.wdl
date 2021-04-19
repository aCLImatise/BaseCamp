version 1.0

task ParsecLibrariesGetFolders {
  input {
    Directory? folder_id
    File? name
    String library_id
  }
  command <<<
    parsec libraries get_folders \
      ~{library_id} \
      ~{if defined(folder_id) then ("--folder_id " +  '"' + folder_id + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    folder_id: "filter for folder by folder id"
    name: "filter for folder by name. For ``name`` specify the full\\npath of the folder starting from the library's root\\nfolder, e.g. ``/subfolder/subsubfolder``."
    library_id: ""
  }
  output {
    File out_stdout = stdout()
  }
}