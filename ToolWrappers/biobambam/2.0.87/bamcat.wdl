version 1.0

task Bamcat {
  command <<<
    bamcat
  >>>
  output {
    File out_stdout = stdout()
  }
}