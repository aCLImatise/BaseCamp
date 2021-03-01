version 1.0

task ColorJunction {
  command <<<
    colorJunction
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}