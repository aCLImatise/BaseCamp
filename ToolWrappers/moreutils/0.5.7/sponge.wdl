version 1.0

task Sponge {
  command <<<
    sponge
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}