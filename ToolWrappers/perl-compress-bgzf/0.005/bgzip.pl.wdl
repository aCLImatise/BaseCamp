version 1.0

task Bgzippl {
  command <<<
    bgzip_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}