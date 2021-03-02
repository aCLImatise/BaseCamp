version 1.0

task Evol {
  command <<<
    evol
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}