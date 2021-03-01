version 1.0

task Bamfilterrefid {
  command <<<
    bamfilterrefid
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}