version 1.0

task GdcClientSettingsUpload {
  input {
    String download
    String upload
    String settings
  }
  command <<<
    gdc-client settings upload \
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