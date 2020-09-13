version 1.0

task Vigpg {
  command <<<
    vigpg
  >>>
  output {
    File out_stdout = stdout()
  }
}