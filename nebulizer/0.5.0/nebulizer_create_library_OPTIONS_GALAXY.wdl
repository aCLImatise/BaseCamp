version 1.0

task NebulizerCreateLibraryOPTIONSGALAXY {
  input {
    String descriptionDescription
    String synopsisSynopsis
  }
  command <<<
    nebulizer create_library OPTIONS GALAXY \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(synopsisSynopsis) then ("--synopsis " +  '"' + synopsisSynopsis + '"') else ""}
  >>>
}