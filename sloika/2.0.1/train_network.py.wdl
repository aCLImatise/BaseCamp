version 1.0

task TrainNetworkpy {
  command <<<
    train_network_py
  >>>
  output {
    File out_stdout = stdout()
  }
}