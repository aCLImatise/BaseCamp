version 1.0

task DownloadBehstDatash {
  command <<<
    download_behst_data_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}