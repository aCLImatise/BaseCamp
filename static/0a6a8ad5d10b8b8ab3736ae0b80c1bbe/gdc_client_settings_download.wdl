version 1.0

task GdcClientSettingsDownload {
  input {
    String download
    String upload
    String settings
  }
  command <<<
    gdc-client settings download \
      ~{download} \
      ~{upload} \
      ~{settings}
  >>>
  parameter_meta {
    download: "download data from the GDC"
    upload: "upload data to the GDC"
    settings: "display default settings"
  }
}