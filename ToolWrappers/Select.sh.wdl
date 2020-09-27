version 1.0

task Selectsh {
  command <<<
    Select_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}