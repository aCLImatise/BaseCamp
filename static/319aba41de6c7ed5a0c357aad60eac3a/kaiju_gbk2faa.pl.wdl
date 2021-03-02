version 1.0

task Kaijugbk2faapl {
  command <<<
    kaiju_gbk2faa_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}