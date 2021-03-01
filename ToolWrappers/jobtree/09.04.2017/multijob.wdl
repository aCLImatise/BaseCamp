version 1.0

task Multijob {
  command <<<
    multijob
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}