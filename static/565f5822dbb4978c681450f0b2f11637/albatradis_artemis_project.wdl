version 1.0

task AlbatradisArtemisProject {
  input {
    String controlControl
    String outputOutputFile
    Boolean verboseVerbose
    Boolean debugDebug
    String? referenceReference
    String? experimentsExperimentsMetadata
  }
  command <<<
    albatradis-artemis_project \
      ~{referenceReference} \
      ~{if defined(controlControl) then ("--control " +  '"' + controlControl + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--outputfile " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{experimentsExperimentsMetadata}
  >>>
}