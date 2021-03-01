version 1.0

task Speedtestpy {
  command <<<
    speedtest_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}