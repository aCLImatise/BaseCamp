version 1.0

task KneaddataDatabase {
  input {
    Boolean availableAvailable
    String downloadDownload
  }
  command <<<
    kneaddata_database \
      ~{true="--available" false="" availableAvailable} \
      ~{if defined(downloadDownload) then ("--download " +  '"' + downloadDownload + '"') else ""}
  >>>
}