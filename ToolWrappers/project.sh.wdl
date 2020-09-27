version 1.0

task Projectsh {
  command <<<
    project_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}