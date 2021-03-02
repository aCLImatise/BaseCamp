version 1.0

task UploadTarpy {
  command <<<
    upload_tar_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}