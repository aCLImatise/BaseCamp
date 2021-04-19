version 1.0

task ParsecLibrariesCreateFolder {
  input {
    Directory? description
    Directory? base_folder_id
    Directory folder
  }
  command <<<
    parsec libraries create_folder \
      ~{folder} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(base_folder_id) then ("--base_folder_id " +  '"' + base_folder_id + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    description: "description of the new folder in the data library"
    base_folder_id: "id of the folder where to create the new folder. If\\nnot provided, the root folder will be used"
    folder: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}