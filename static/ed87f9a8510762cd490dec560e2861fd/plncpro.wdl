version 1.0

task Plncpro {
  command <<<
    plncpro
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}