version 1.0

task Txt2ftblpy {
  command <<<
    txt2ftbl_py
  >>>
  output {
    File out_stdout = stdout()
  }
}