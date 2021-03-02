version 1.0

task FragDuck {
  command <<<
    frag_duck
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}