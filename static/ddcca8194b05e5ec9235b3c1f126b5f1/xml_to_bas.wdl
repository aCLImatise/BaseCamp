version 1.0

task XmlToBas.pl {
  input {
    Boolean uriUri
    Boolean outputOutput
    Boolean bamBam
    String localLocalPath
    Boolean manMan
    Boolean versionVersion
    Boolean manMan
    Boolean versionVersion
  }
  command <<<
    xml_to_bas.pl \
      ~{true="-uri" false="" uriUri} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-bam" false="" bamBam} \
      ~{if defined(localLocalPath) then ("-local-path " +  '"' + localLocalPath + '"') else ""} \
      ~{true="-man" false="" manMan} \
      ~{true="-version" false="" versionVersion} \
      ~{true="-man" false="" manMan} \
      ~{true="-version" false="" versionVersion}
  >>>
}