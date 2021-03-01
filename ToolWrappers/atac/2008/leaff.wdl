version 1.0

task Leaff {
  command <<<
    leaff
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}