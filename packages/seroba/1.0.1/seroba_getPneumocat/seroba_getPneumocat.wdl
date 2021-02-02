version 1.0

task SerobaGetPneumocat {
  command <<<
    seroba getPneumocat
  >>>
  output {
    File out_stdout = stdout()
  }
}