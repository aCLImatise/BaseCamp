version 1.0

task Groopm {
  command <<<
    groopm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}