version 1.0

task Ff2ftblpy {
  command <<<
    ff2ftbl_py
  >>>
  output {
    File out_stdout = stdout()
  }
}