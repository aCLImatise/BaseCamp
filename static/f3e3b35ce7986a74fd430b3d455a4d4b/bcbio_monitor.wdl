version 1.0

task BcbioMonitor {
  input {
    String configConfig
    String titleTitle
    Boolean noNoUpdate
    Boolean noNoBrowser
    Boolean localLocal
    String? logLogFile
  }
  command <<<
    bcbio_monitor \
      ~{logLogFile} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(titleTitle) then ("--title " +  '"' + titleTitle + '"') else ""} \
      ~{true="--no-update" false="" noNoUpdate} \
      ~{true="--no-browser" false="" noNoBrowser} \
      ~{true="--local" false="" localLocal}
  >>>
}