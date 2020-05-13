version 1.0

task NebulizerCreateLibraryFolderGALAXYGALAXY {
  input {
    String descriptionDescription
  }
  command <<<
    nebulizer create_library_folder GALAXY GALAXY \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""}
  >>>
}