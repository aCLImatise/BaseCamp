version 1.0

task NebulizerCreateLibraryFolderGALAXYPATH {
  input {
    String descriptionDescription
  }
  command <<<
    nebulizer create_library_folder GALAXY PATH \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""}
  >>>
}