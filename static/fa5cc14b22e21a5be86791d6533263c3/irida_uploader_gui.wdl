version 1.0

task Iridauploadergui {
  command <<<
    irida_uploader_gui
  >>>
  runtime {
    docker: "quay.io/biocontainers/irida-uploader:0.5.1--py36_1"
  }
  output {
    File out_stdout = stdout()
  }
}