version 1.0

task Blastx {
  command <<<
    blastx
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}