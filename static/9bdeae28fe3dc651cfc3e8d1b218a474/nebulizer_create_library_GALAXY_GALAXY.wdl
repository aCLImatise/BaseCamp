version 1.0

task NebulizerCreateLibraryGALAXYGALAXY {
  input {
    String descriptionDescription
    String synopsisSynopsis
  }
  command <<<
    nebulizer create_library GALAXY GALAXY \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(synopsisSynopsis) then ("--synopsis " +  '"' + synopsisSynopsis + '"') else ""}
  >>>
}