version 1.0

task NebulizerCreateLibraryFolderGALAXYOPTIONS {
  input {
    String descriptionDescription
  }
  command <<<
    nebulizer create_library_folder GALAXY OPTIONS \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""}
  >>>
}