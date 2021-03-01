version 1.0

task Defiant {
  command <<<
    defiant
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}