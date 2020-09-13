version 1.0

task MapGeneNetworkpy {
  command <<<
    mapGeneNetwork_py
  >>>
  output {
    File out_stdout = stdout()
  }
}