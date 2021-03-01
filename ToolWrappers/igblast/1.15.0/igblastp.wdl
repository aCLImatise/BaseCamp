version 1.0

task Igblastp {
  command <<<
    igblastp
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}