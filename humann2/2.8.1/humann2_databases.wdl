version 1.0

task Humann2Databases {
  input {
    Boolean availableAvailable
    String downloadDownload
    String updateUpdateConfig
  }
  command <<<
    humann2_databases \
      ~{true="--available" false="" availableAvailable} \
      ~{if defined(downloadDownload) then ("--download " +  '"' + downloadDownload + '"') else ""} \
      ~{if defined(updateUpdateConfig) then ("--update-config " +  '"' + updateUpdateConfig + '"') else ""}
  >>>
}