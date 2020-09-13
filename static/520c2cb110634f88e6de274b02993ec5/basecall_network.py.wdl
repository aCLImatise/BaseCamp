version 1.0

task BasecallNetworkpy {
  command <<<
    basecall_network_py
  >>>
  output {
    File out_stdout = stdout()
  }
}