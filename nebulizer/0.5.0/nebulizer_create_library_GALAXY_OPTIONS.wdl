version 1.0

task NebulizerCreateLibraryGALAXYOPTIONS {
  input {
    String descriptionDescription
    String synopsisSynopsis
  }
  command <<<
    nebulizer create_library GALAXY OPTIONS \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(synopsisSynopsis) then ("--synopsis " +  '"' + synopsisSynopsis + '"') else ""}
  >>>
}