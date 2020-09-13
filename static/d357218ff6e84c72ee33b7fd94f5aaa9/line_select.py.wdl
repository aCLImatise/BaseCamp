version 1.0

task LineSelectpy {
  command <<<
    line_select_py
  >>>
  output {
    File out_stdout = stdout()
  }
}