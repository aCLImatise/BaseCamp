version 1.0

task Planemo {
  input {
    Boolean verboseVerbose
    String configConfig
    String directoryDirectory
  }
  command <<<
    planemo \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(configConfig) then ("--config " +  '"' + configConfig + '"') else ""} \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""}
  >>>
}