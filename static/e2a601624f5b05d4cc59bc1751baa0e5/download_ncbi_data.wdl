version 1.0

task Downloadncbidata {
  command <<<
    download_ncbi_data
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}