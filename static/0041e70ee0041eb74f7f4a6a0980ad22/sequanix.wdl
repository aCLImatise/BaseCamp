version 1.0

task Sequanix {
  command <<<
    sequanix
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}