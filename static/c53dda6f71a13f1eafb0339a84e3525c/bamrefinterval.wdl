version 1.0

task Bamrefinterval {
  command <<<
    bamrefinterval
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}