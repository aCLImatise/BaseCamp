version 1.0

task SpadesInitpy {
  command <<<
    spades_init_py
  >>>
  output {
    File out_stdout = stdout()
  }
}