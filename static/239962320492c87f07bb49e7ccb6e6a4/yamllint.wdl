version 1.0

task Yamllint {
  input {
    String configConfigFile
    String configConfigData
    String formatFormat
    File? fileFileOrDir
  }
  command <<<
    yamllint \
      ~{fileFileOrDir} \
      ~{if defined(configConfigFile) then ("--config-file " +  '"' + configConfigFile + '"') else ""} \
      ~{if defined(configConfigData) then ("--config-data " +  '"' + configConfigData + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""}
  >>>
}