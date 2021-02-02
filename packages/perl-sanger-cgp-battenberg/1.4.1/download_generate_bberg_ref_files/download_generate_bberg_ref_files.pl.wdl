version 1.0

task DownloadGenerateBbergRefFilespl {
  command <<<
    download_generate_bberg_ref_files_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}