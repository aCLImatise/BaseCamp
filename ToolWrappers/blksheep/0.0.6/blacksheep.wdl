version 1.0

task Blacksheep {
  command <<<
    blacksheep
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}