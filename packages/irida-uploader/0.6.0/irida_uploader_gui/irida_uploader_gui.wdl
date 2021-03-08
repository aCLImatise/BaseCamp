version 1.0

task Iridauploadergui {
  command <<<
    irida_uploader_gui
  >>>
  runtime {
    docker: "quay.io/biocontainers/irida-uploader:0.6.0--py36_0"
  }
  output {
    File out_stdout = stdout()
  }
}