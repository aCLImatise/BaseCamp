version 1.0

task NebulizerCreateLibraryNAMEGALAXY {
  input {
    String descriptionDescription
    String synopsisSynopsis
  }
  command <<<
    nebulizer create_library NAME GALAXY \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(synopsisSynopsis) then ("--synopsis " +  '"' + synopsisSynopsis + '"') else ""}
  >>>
}