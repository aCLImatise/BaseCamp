version 1.0

task NebulizerCreateLibraryFolder {
  input {
    Directory? description
  }
  command <<<
    nebulizer create_library_folder \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""}
  >>>
  parameter_meta {
    description: "description of the new folder"
  }
  output {
    File out_stdout = stdout()
  }
}