version 1.0

task Rucs {
  command <<<
    rucs
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}