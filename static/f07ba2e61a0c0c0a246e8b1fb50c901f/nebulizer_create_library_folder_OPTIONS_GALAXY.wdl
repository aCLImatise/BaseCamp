version 1.0

task NebulizerCreateLibraryFolderOPTIONSGALAXY {
  input {
    String descriptionDescription
  }
  command <<<
    nebulizer create_library_folder OPTIONS GALAXY \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""}
  >>>
}