version 1.0

task DownloadMetaseqExampleDatapy {
  command <<<
    download_metaseq_example_data_py
  >>>
  output {
    File out_stdout = stdout()
  }
}