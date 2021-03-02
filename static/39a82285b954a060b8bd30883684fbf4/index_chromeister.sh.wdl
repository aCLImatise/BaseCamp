version 1.0

task IndexChromeistersh {
  command <<<
    index_chromeister_sh
  >>>
  runtime {
    docker: "quay.io/biocontainers/chromeister:1.5.a--h516909a_0"
  }
  output {
    File out_stdout = stdout()
  }
}