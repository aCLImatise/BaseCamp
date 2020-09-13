version 1.0

task Kaijugbk2faapl {
  command <<<
    kaiju_gbk2faa_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}