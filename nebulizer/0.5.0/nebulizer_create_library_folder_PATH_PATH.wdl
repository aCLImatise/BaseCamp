version 1.0

task NebulizerCreateLibraryFolderPATHPATH {
  input {
    String descriptionDescription
  }
  command <<<
    nebulizer create_library_folder PATH PATH \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""}
  >>>
}