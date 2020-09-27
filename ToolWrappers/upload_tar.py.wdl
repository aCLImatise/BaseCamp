version 1.0

task UploadTarpy {
  command <<<
    upload_tar_py
  >>>
  output {
    File out_stdout = stdout()
  }
}