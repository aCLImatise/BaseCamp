version 1.0

task CalculationsNewpy {
  command <<<
    calculations_new_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}