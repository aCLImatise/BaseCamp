version 1.0

task Reportspy {
  command <<<
    reports_py
  >>>
  output {
    File out_stdout = stdout()
  }
}