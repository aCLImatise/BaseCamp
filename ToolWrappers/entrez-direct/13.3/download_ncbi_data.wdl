version 1.0

task Downloadncbidata {
  command <<<
    download_ncbi_data
  >>>
  output {
    File out_stdout = stdout()
  }
}