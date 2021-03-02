version 1.0

task CalculationsNew {
  command <<<
    calculations_new
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}