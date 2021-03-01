version 1.0

task Brassassemble {
  command <<<
    brass_assemble
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}