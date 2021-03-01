version 1.0

task Fastalength {
  command <<<
    fastalength
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}