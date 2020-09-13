version 1.0

task FilterDeltaFileForQryspl {
  command <<<
    filter_delta_file_for_qrys_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}