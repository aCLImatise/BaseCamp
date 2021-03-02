version 1.0

task Bamfilterheader2 {
  command <<<
    bamfilterheader2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}