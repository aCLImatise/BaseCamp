version 1.0

task Bgzippl {
  command <<<
    bgzip_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}