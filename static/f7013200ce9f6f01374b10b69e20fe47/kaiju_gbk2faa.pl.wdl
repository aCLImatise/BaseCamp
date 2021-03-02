version 1.0

task Kaijugbk2faapl {
  command <<<
    kaiju_gbk2faa_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/kaiju:1.7.4--h8b12597_0"
  }
  output {
    File out_stdout = stdout()
  }
}