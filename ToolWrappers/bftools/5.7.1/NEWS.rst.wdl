version 1.0

task NEWSrst {
  command <<<
    NEWS_rst
  >>>
  output {
    File out_stdout = stdout()
  }
}