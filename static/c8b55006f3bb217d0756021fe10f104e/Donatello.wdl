version 1.0

task Donatello {
  command <<<
    Donatello
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}