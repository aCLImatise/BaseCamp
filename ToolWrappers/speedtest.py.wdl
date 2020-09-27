version 1.0

task Speedtestpy {
  command <<<
    speedtest_py
  >>>
  output {
    File out_stdout = stdout()
  }
}