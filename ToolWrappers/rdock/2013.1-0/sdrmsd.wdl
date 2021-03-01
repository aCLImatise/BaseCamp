version 1.0

task Sdrmsd {
  command <<<
    sdrmsd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}