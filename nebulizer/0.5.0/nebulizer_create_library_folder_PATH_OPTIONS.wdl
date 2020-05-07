version 1.0

task NebulizerCreateLibraryFolderPATHOPTIONS {
  input {
    String descriptionDescription
  }
  command <<<
    nebulizer create_library_folder PATH OPTIONS \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""}
  >>>
}