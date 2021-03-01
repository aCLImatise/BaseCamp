version 1.0

task FUNCSpm {
  command <<<
    FUNCS_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}