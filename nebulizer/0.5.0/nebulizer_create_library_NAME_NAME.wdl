version 1.0

task NebulizerCreateLibraryNAMENAME {
  input {
    String descriptionDescription
    String synopsisSynopsis
  }
  command <<<
    nebulizer create_library NAME NAME \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(synopsisSynopsis) then ("--synopsis " +  '"' + synopsisSynopsis + '"') else ""}
  >>>
}