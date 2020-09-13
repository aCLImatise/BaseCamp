version 1.0

task Behstdownloaddatash {
  command <<<
    behst_download_data_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}