version 1.0

task Seedtop {
  command <<<
    seedtop
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}