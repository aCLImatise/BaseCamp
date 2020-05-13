version 1.0

task NebulizerCreateLibraryFolderPATHGALAXY {
  input {
    String descriptionDescription
  }
  command <<<
    nebulizer create_library_folder PATH GALAXY \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""}
  >>>
}