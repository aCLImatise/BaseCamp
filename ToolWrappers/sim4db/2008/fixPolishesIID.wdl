version 1.0

task FixPolishesIID {
  command <<<
    fixPolishesIID
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}