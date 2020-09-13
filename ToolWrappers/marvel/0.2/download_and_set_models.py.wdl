version 1.0

task DownloadAndSetModelspy {
  command <<<
    download_and_set_models_py
  >>>
  output {
    File out_stdout = stdout()
  }
}