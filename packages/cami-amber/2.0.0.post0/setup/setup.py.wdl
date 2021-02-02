version 1.0

task Setuppy {
  command <<<
    setup_py
  >>>
  output {
    File out_stdout = stdout()
  }
}