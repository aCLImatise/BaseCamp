version 1.0

task Platypus {
  command <<<
    platypus
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}