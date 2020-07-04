version 1.0

task NebulizerCreateLibraryFolder {
  input {
    String? description
    String galaxy
    File path
  }
  command <<<
    nebulizer create_library_folder \
      ~{galaxy} \
      ~{path} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""}
  >>>
  parameter_meta {
    description: "description of the new folder"
    galaxy: ""
    path: ""
  }
}