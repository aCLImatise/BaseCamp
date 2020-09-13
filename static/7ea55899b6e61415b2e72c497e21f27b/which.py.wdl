version 1.0

task Whichpy {
  command <<<
    which_py
  >>>
  output {
    File out_stdout = stdout()
  }
}