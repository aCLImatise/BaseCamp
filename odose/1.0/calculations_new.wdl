version 1.0

task CalculationsNew {
  command <<<
    calculations_new
  >>>
  output {
    File out_stdout = stdout()
  }
}