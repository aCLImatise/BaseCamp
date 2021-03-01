version 1.0

task TCoffee {
  command <<<
    t_coffee
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}