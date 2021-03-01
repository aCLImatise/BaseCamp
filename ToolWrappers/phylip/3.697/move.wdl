version 1.0

task Move {
  command <<<
    move
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}