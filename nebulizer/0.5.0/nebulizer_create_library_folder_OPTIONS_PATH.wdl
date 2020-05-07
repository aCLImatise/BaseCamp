version 1.0

task NebulizerCreateLibraryFolderOPTIONSPATH {
  input {
    String descriptionDescription
  }
  command <<<
    nebulizer create_library_folder OPTIONS PATH \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""}
  >>>
}