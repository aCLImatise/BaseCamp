version 1.0

task AlbatradisPresenceAbsence {
  input {
    String prefixPrefix
    Boolean verboseVerbose
    Boolean debugDebug
    String? emblEmblFile
    String? geneGeneReports
  }
  command <<<
    albatradis-presence_absence \
      ~{emblEmblFile} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{geneGeneReports}
  >>>
}