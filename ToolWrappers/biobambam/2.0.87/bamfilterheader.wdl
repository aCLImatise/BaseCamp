version 1.0

task Bamfilterheader {
  command <<<
    bamfilterheader
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}