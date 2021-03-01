version 1.0

task GdcclientSettingsDownload {
  input {
    String download
    String upload
    String settings
  }
  command <<<
    gdc_client settings download \
      ~{download} \
      ~{upload} \
      ~{settings}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gdc-client:1.6.0--py_0"
  }
  parameter_meta {
    download: "download data from the GDC"
    upload: "upload data to the GDC"
    settings: "display default settings"
  }
  output {
    File out_stdout = stdout()
  }
}