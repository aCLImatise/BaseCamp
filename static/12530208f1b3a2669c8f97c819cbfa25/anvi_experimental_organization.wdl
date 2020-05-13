version 1.0

task AnviExperimentalOrganization {
  input {
    String profileProfileDb
    String contigsContigsDb
    String inputInputDirectory
    String nameName
    String distanceDistance
    String linkageLinkage
    Boolean skipSkipStoreInDb
    File outputOutputFile
    Boolean dryDryRun
    File? fileFile
  }
  command <<<
    anvi-experimental-organization \
      ~{fileFile} \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(inputInputDirectory) then ("--input-directory " +  '"' + inputInputDirectory + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(linkageLinkage) then ("--linkage " +  '"' + linkageLinkage + '"') else ""} \
      ~{true="--skip-store-in-db" false="" skipSkipStoreInDb} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--dry-run" false="" dryDryRun}
  >>>
}